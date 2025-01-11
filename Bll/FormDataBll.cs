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
     public class FormDataBll
    {
         private IRepository<FormData> formDataContext;
         private PsychotherapyEntities entities;

         public FormDataBll()
         {
            entities = new PsychotherapyEntities();
            formDataContext = new Repository<FormData>(entities);
         }

         /// <summary>
         /// 添加FormData
         /// </summary>
         /// <param name="FormData"></param>
         /// <returns></returns>
         public bool AddFormData(FormData FormData)
         {
             formDataContext.Add(FormData);
             return formDataContext.Save() > 0;
         }

         /// <summary>
         /// 删除一个或多个FormData
         /// </summary>
         /// <param name="ids">表示强类型id列表</param>
         /// <returns></returns>
         public bool DeleteFormData(List<Guid> ids)
         {
                return false;
         }

         /// <summary>
         /// 更新FormData
         /// </summary>
         /// <param name="formData"></param>
         /// <returns></returns>
         public bool UpDateFormData(FormData formData)
         {
             formDataContext.Update(formData);
             return formDataContext.Save() > 0;
         }

         /// <summary>
         /// 获取FormData分页列表
         /// </summary>
         /// <param name="pageIndex">页索引</param>
         /// <param name="pageSize">页大小</param>
         /// <param name="filter">筛选条件</param>
         /// <returns></returns>
         public IPagedList<FormData> GetPagedFormDataList(int pageIndex, int pageSize, Expression<Func<FormData, bool>> filter)
         {
             if (filter == null) filter = PredicateBuilder.True<FormData>();
             int index = pageIndex;
             int totalCount;
             IList<FormData> list = formDataContext.FindOrderBy<int>(filter, r => r.FormDataID, ref index, pageSize, out totalCount);
             return list.ToPagedList<FormData>(index, pageSize, totalCount);
             
         }



         public IList<FormData> GetFormDataListByPatientID(int id)
         {
             return formDataContext.FindOrderByDescending<DateTime>(f => f.PatientID == id, f => f.TimeCreated);
         }

         /// <summary>
         /// 获取共享的FormData
         /// </summary>
         /// <param name="userID"></param>
         /// <param name="patientID"></param>
         /// <param name="pageIndex"></param>
         /// <param name="pageSize"></param>
         /// <param name="filter"></param>
         /// <returns></returns>
         public IPagedList<FormData> GetSharedFormDataList(int userID, int patientID, int pageIndex, int pageSize, Expression<Func<FormData, bool>> filter)
         {
             if (filter == null) filter = PredicateBuilder.True<FormData>();            
             var query = entities.UserFormDataPermissions.AsExpandable().Where(ufd => ufd.UserID == userID && ufd.PatientID == patientID && ufd.can_read);
             return query.Select(ufd => ufd.FormData).Where(filter).OrderByDescending(f=>f.TimeCreated).ToPagedList(pageIndex, pageSize);
         }

         /// <summary>
         /// 获取所有FormData
         /// </summary>
         /// <returns></returns>
         public IList<FormData> GetAllFormData()
         {
             return formDataContext.FindAll();
         }

         /// <summary>
         /// 通过ID查找获取FormData信息
         /// </summary>
         /// <param name="id"></param>
         /// <returns></returns>
         public FormData GetFormDataByID(int id)
         {
             return formDataContext.FindByKey(id, "FormDataID");
         }

         /// <summary>
         /// 通过指定条件获取FormData信息
         /// </summary>
         /// <param name="filter"></param>
         /// <returns></returns>
         public FormData GetFormDataByFilter(Expression<Func<FormData, bool>> filter)
         {
             return formDataContext.SingleOrDefault(filter);
         }
    }
}
