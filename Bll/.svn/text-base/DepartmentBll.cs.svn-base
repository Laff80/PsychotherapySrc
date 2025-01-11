using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using System.Linq.Expressions;
using Insourcia.WebControls.MvcPaging;
using LinqKit;

namespace Insourcia.Psychotherapy.Bll
{
    public class DepartmentBll:BaseBll<Department>
    {
        private IRepository<Department> departmentContext;
        private PsychotherapyEntities entities;

        public DepartmentBll()
        {
            entities = new PsychotherapyEntities();
            departmentContext = new Repository<Department>(entities);
            Context = departmentContext;
        }

        /// <summary>
        /// 根据id查找部门
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Department GetDepartmentById(int id)
        {
            return departmentContext.FindByKey(id, "DepartmentId");
        }

        /// <summary>
        /// 添加一个部门信息
        /// </summary>
        /// <param name="department"></param>
        /// <returns></returns>
        public bool AddDepartment(Department department)
        {
            departmentContext.Add(department);
            return departmentContext.Save() > 0;
        }

        public String GetUserName(int id)
        {
            try
            {
                UserBll bll = new UserBll();
                User user = bll.GetUserByID(id);
                return user.UserName;
            }
            catch (Exception e)
            {
                return null;

            }
        }

        /// <summary>
        /// 删除指定部门Id信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool DelDepartment(int id)
        {
            Department department = GetDepartmentById(id);
            if (department == null)
                return false;
            departmentContext.Delete(department);
            return departmentContext.Save() > 0;
        }
        /// <summary>
        /// 更新一个部门信息
        /// </summary>
        /// <param name="department"></param>
        /// <returns></returns>
        public bool UpdateDepartment(Department department)
        {
            departmentContext.Update(department);
            return departmentContext.Save() > 0;
        }

        /// <summary>
        /// 根据条件查询部门信息
        /// </summary>
        /// <param name="filter"></param>
        /// <returns></returns>
        public Department GetDepartmentByFilter(Expression<Func<Department, bool>> filter)
        {
            return departmentContext.SingleOrDefault(filter);
        }
        /// <summary>
        /// 根据条件筛选初部门信息
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pagesize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<Department> GetPageList(int pageIndex, int pageSize, Expression<Func<Department, bool>> filter)
        {
            if (filter == null)
                filter = PredicateBuilder.True<Department>();
            int index = pageIndex;
            int totalCount;
            IList<Department> list = departmentContext.FindOrderBy(filter,r=>r.DepartmentID, ref index, pageSize, out totalCount);
            return list.ToPagedList<Department>(index, pageSize,totalCount);
        }
       
    }
}
