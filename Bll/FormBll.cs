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
     public class FormBll
    {
         private IRepository<Form> formContext;
         private PsychotherapyEntities entities;

         public FormBll()
         {
             entities = new PsychotherapyEntities();
             formContext = new Repository<Form>(entities);
         }
         /// <summary>
         /// 添加一个form
         /// </summary>
         /// <param name="form"></param>
         /// <returns></returns>
         public bool AddForm(Form form)
         {
             formContext.Add(form);
             return formContext.Save() > 0;
         }

         /// <summary>
         /// 根据编号查询一个Form
         /// </summary>
         /// <param name="id"></param>
         /// <returns></returns>
         public Form GetFormById(int id)
         {
             return formContext.FindByKey(id,"FormId");
         }

         /// <summary>
         /// 根据编号删除一个Form
         /// </summary>
         /// <param name="id"></param>
         /// <returns></returns>
         public bool DelForm(int id)
         {
             Form form = GetFormById(id);
             if (form == null)
                 return false;
             formContext.Delete(form);
             return formContext.Save()>0;
         }

         /// <summary>
         /// 更新一个form
         /// </summary>
         /// <param name="form"></param>
         /// <returns></returns>
         public bool UpdateForm(Form form)
         {
             formContext.Update(form);
             return formContext.Save() > 0;
         }

         /// <summary>
         /// 通过指定条件获取Form
         /// </summary>
         /// <param name="filter"></param>
         /// <returns></returns>
        public Form GetUserByFilter(Expression<Func<Form,bool>> filter)
        {
            return formContext.SingleOrDefault(filter);
        }

         /// <summary>
         /// 获取所有的form
         /// </summary>
         /// <returns></returns>
        public IList<Form> GetAllForms()
        {
            return formContext.FindAll();
        }

         /// <summary>
        ///  获取用户分页列表
         /// </summary>
         /// <param name="pageIndex">初始化页</param>
         /// <param name="pageSize">页大小</param>
         /// <param name="filter">筛选条件</param>
         /// <returns></returns>
        public IPagedList<Form> GetFormPageLists(int pageIndex, int pageSize, Expression<Func<Form, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Form>();
            int index = pageIndex;
            int totalCount;
            IList<Form> list = formContext.FindOrderBy<String>(filter, r => r.FormName, ref index, pageSize, out totalCount);
            return list.ToPagedList<Form>(index, pageSize, totalCount);
        }
    }

     public class FormBO : BOBase<FormBO>
     {
           
     }
}
