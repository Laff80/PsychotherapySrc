using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using Insourcia.WebControls.MvcPaging;
using System.Linq.Expressions;
using LinqKit;

namespace Insourcia.Psychotherapy.Bll
{
    public class FilesBll : BaseBll<File>
    {
        private IRepository<File> fileContext;
        PsychotherapyEntities entities;

        public FilesBll()
        {
            entities = new PsychotherapyEntities();
            fileContext = new Repository<File>(entities);
            Context = fileContext;
        }

        //public File GetFileByID(int id)
        //{
        //    return fileContext.FindByKey(id, "FileID");
        //}

        /// <summary>
        /// 获取文件分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<File> GetPagedFileList(int pageIndex, int pageSize, Expression<Func<File, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<File>();
            int index = pageIndex;
            int totalCount;
            IList<File> list = fileContext.FindOrderByDescending<DateTime>(filter, r => r.TimeCreated.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<File>(index, pageSize, totalCount);
        }

        public IList<File> GetFileListByPatientID(int id)
        {
            return fileContext.FindOrderByDescending<DateTime>(f => f.PatientID == id, f => f.TimeCreated.Value);
        }

        public IList<File> GetFiles(Expression<Func<File, bool>> where)
        {
            if (where == null)
                where = PredicateBuilder.True<File>();
            return fileContext.Find(where);
        }
    }
}
