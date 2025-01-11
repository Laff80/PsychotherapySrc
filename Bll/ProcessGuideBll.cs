using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Repository;
using Insourcia.Psychotherapy.Model;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.WebControls.MvcPaging;

namespace Insourcia.Psychotherapy.Bll
{
    public class ProcessGuideBll : BaseBll<ProcessGuide>
    {
         private IRepository<ProcessGuide> processGuideContext;
         private PsychotherapyEntities entities;

         public ProcessGuideBll()
         {
             
             entities = new PsychotherapyEntities();
             processGuideContext = new Repository<ProcessGuide>(entities);
             Context = processGuideContext;//给父类的Context赋值，这是必须的。
         }


         /// <summary>
         /// 获取文件分页列表
         /// </summary>
         /// <param name="pageIndex">页索引</param>
         /// <param name="pageSize">页大小</param>
         /// <param name="filter">筛选条件</param>
         /// <returns></returns>
         public IPagedList<ProcessGuide> GetPagedProcess(int pageIndex, int pageSize, Expression<Func<ProcessGuide, bool>> filter)
         {
             if (filter == null) filter = PredicateBuilder.True<ProcessGuide>();
             int index = pageIndex;
             int totalCount;
             IList<ProcessGuide> list = processGuideContext.FindOrderBy<DateTime>(filter, r => r.TimeCreated.Value, ref index, pageSize, out totalCount);
             return list.ToPagedList<ProcessGuide>(index, pageSize, totalCount);
         }

         public IList<ProcessGuide> GetProcessGuideByLevelList(Expression<Func<ProcessGuide, bool>> filter)
         {
             if (filter == null) filter = PredicateBuilder.True<ProcessGuide>();

             IList<ProcessGuide> list = processGuideContext.Find(filter);
             return list;
         }


         public IList<ProcessGuide> GetAllProcessGuide()
         {
             return processGuideContext.FindAll();
         }

         /// <summary>
         /// 获取指定ID的信息
         /// </summary>
         /// <param name="id"></param>
         /// <returns></returns>
         public ProcessGuide GetProcessGuideByID(int id)
         {
             return processGuideContext.FindByKey(id, "ProcessGuideID");
         }
       
    }
}
