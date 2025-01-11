using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.WebControls.MvcPaging;
using System.Linq.Expressions;
using Insourcia.Repository;

namespace Insourcia.Psychotherapy.Bll
{
   public  class LogRecordBll
    {
        private IRepository<LogRecord> repository;
        /// <summary>
        /// 构造一个操作日志的对象
        /// </summary>
        public LogRecordBll()
        {
            repository = new Repository<LogRecord>(new PsychotherapyEntities());
        }

        /// <summary>
        /// 删除一段时间的日志
        /// </summary>
        /// <param name="startTime">开始时间</param>
        /// <param name="endTime">结束时间</param>
        /// <returns>成功删除的日志数</returns>
        public int DeleteLog(DateTime startTime, DateTime endTime)
        {
            if (startTime.Equals(DateTime.MinValue) || endTime.Equals(DateTime.MinValue))
                throw new ArgumentException("必须提供开始时间和结束时间");
            DateTime sTime = startTime.Date;
            DateTime eTime = endTime.Date.AddMinutes(1439);
            return repository.Delete(l=>l.Date.CompareTo(sTime)>=0&&l.Date.CompareTo(eTime)<=0);
        }

        /// <summary>
        /// 分页获取日志
        /// </summary>
        /// <param name="pageSize">页大小</param>
        /// <param name="pageIndex">页索引</param>
        /// <param name="where">条件表达式</param>
        /// <returns></returns>
        public IPagedList<LogRecord> GetLogList(int pageSize, int pageIndex, Expression<Func<LogRecord, bool>> where)
        {
            int totalCount;
            int index = pageIndex;
            IList<LogRecord> list = repository.FindOrderByDescending<DateTime>(where, l => l.Date, ref index, pageSize, out totalCount);
            return list.ToPagedList(index, pageSize, totalCount);
        }

        public bool AddLog(LogRecord model)
        {
            throw new NotImplementedException();
        }
    }
}
