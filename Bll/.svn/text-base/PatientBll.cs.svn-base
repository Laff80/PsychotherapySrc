using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using Insourcia.WebControls.MvcPaging;
using LinqKit;
using System.Linq.Expressions;

namespace Insourcia.Psychotherapy.Bll
{
    public class PatientBll
    {
        private IRepository<Patient> patientContext;
        private PsychotherapyEntities entities;

        public PatientBll()
        {
            entities = new PsychotherapyEntities();
            patientContext = new Repository<Patient>(entities);
        }

        /// <summary>
        /// 新增一个客户
        /// </summary>
        /// <param name="patient"></param>
        /// <returns></returns>
        public bool AddPatient(Patient patient)
        {
            patientContext.Add(patient);
            return patientContext.Save() > 0;
        }

        /// <summary>
        /// 删除一个客户
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool DeletePatient(int id)
        {
            Patient patient = GetPatientByID(id);
            if (patient == null) return false;
            patientContext.Delete(patient);
            return patientContext.Save() > 0;
        }

        /// <summary>
        /// 更新一个客户
        /// </summary>
        /// <param name="patient"></param>
        /// <returns></returns>
        public bool UpdatePatient(Patient patient)
        {
            patientContext.Update(patient);
            return patientContext.Save() > 0;
        }

        /// <summary>
        /// 通过指定ID获取客户信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Patient GetPatientByID(int id)
        {
            return patientContext.FindByKey(id, "PatientID");
        }

        /// <summary>
        /// 通过指定条件获取客户信息
        /// </summary>
        /// <param name="filter"></param>
        /// <returns></returns>
        public Patient GetPatientByFilter(Expression<Func<Patient, bool>> filter)
        {
            return patientContext.SingleOrDefault(filter);
        }

        /// <summary>
        /// 获取客户分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<Patient> GetPagedPatientList(int pageIndex, int pageSize, Expression<Func<Patient, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Patient>();
            int index = pageIndex;
            int totalCount;
            IList<Patient> list = patientContext.FindOrderByDescending<DateTime>(filter, r => r.TimeCreated.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<Patient>(index, pageSize, totalCount);
        }

        /// <summary>
        /// 获取其他人共享的Patient
        /// </summary>
        /// <param name="userID">自己ID</param>
        /// <param name="sharerID">共享者ID</param>
        /// <param name="pageIndex">页号</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">条件</param>
        /// <returns></returns>
        public IPagedList<Patient> GetSharedPatientList(int userID,int sharerID , int pageIndex, int pageSize, Expression<Func<Patient, bool>> filter)
        {
            if(filter==null)
                filter=PredicateBuilder.True<Patient>();
            //filter=filter.And();
            var query = entities.UserPatientPermissions.Where(up => up.UserID == userID).Select(up => up.Patient).Where(p => p.UserID == sharerID);           
            return query.OrderBy(p => p.TimeCreated).ToPagedList(pageIndex, pageSize);
        }

    }
}
