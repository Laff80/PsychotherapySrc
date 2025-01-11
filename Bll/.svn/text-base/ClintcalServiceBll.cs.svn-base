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
    public class ClintcalServiceBll : BaseBll<ClinicalService>
    {
        private IRepository<ClinicalService> clinicalserviceContext;
        PsychotherapyEntities entities;

        public ClintcalServiceBll()
        {
            entities = new PsychotherapyEntities();
            clinicalserviceContext = new Repository<ClinicalService>(entities);
            Context = clinicalserviceContext;
        }

        /// <summary>
        /// 获取临床服务分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<ClinicalService> GetPagedFileList(int pageIndex, int pageSize, Expression<Func<ClinicalService, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<ClinicalService>();
            int index = pageIndex;
            int totalCount;
            IList<ClinicalService> list = clinicalserviceContext.FindOrderByDescending<DateTime>(filter, c => c.CreateTime.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<ClinicalService>(index, pageSize, totalCount);
        }
    }
}
