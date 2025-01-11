using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using Insourcia.WebControls.MvcPaging;
using System.Linq.Expressions;
using LinqKit;
using System.Web.Mvc;

namespace Insourcia.Psychotherapy.Bll
{
    /// <summary>
    /// 操作用户的业务逻辑类
    /// </summary>
    public class UserBll : BaseBll<User>
    {
         private IRepository<User> userContext;
         private IRepository<SiteDepartmentUser> SiteDepartmentUserContext;
         private PsychotherapyEntities entities;

         public UserBll()
         {
             entities = new PsychotherapyEntities();
             userContext = new Repository<User>(entities);
             Context = userContext;
             SiteDepartmentUserContext = new Repository<SiteDepartmentUser>(entities);
         }

         /// <summary>
         /// 构造业务逻辑对象的实例
         /// </summary>
         public static UserBll Instance
         {
             get { return new UserBll(); }
         }

         /// <summary>
         /// 添加一个用户
         /// </summary>
         /// <param name="user">表示用户类型</param>
         /// <returns></returns>
         public bool AddUser(User user)
         {
             userContext.Add(user);
             return userContext.Save() > 0;
         }

         ///// <summary>
         ///// 删除一个或多个用户
         ///// </summary>
         ///// <param name="ids">表示强类型id列表</param>
         ///// <returns></returns>
         //public bool DeleteUser(List<Guid> ids)
         //{
         //    User user = GetUserByID(ids);
         //}
         /// <summary>
         /// 根据用户的ID删除用户
         /// </summary>
         /// <param name="id"></param>
         /// <returns></returns>
         public bool DeleteUser(int id)
         {
             User user = GetUserByID(id);
             if (user == null)
                 return false;
             user.IsValid = false;
             userContext.Update(user);
             //if (!DeleteUserExtend(user)) return false;
             //userContext.Delete(user);
             return userContext.Save() > 0;
         }
        
         public bool DeleteUserExtend(User user)
         {
             SiteDepartmentUser userExtend = SiteDepartmentUserContext.SingleOrDefault(s => s.UserID == user.UserID && s.SiteID == user.DefaultSiteID);
             if (userExtend == null) return false;
             SiteDepartmentUserContext.Delete(userExtend);
             return SiteDepartmentUserContext.Save() > 0;
         }

         /// <summary>
         /// 更新一个用户信息
         /// </summary>
         /// <param name="user">表示用户类型</param>
         /// <returns></returns>
         public bool UpDateUser(User user)
         {
             userContext.Update(user);
             return userContext.Save() > 0;
         }

         /// <summary>
         /// 获取用户分页列表
         /// </summary>
         /// <param name="pageIndex">页索引</param>
         /// <param name="pageSize">页大小</param>
         /// <param name="filter">筛选条件</param>
         /// <returns></returns>
         public IPagedList<User> GetPagedUserList(int pageIndex, int pageSize, Expression<Func<User, bool>> filter)
         {
             if (filter == null) filter = PredicateBuilder.True<User>();
             int index = pageIndex;
             int totalCount;
             IList<User> list = userContext.FindOrderBy<DateTime>(filter, r => r.TimeCreated, ref index, pageSize, out totalCount);
             return list.ToPagedList<User>(index, pageSize, totalCount);
             
         }

         /// <summary>
         /// 获取所有用户
         /// </summary>
         /// <returns></returns>
         public IList<User> GetAllUsers()
         {
             return userContext.FindAll();
         }

        /// <summary>
        /// 根据条件读取用户
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
         public IList<User> GetUsers(Expression<Func<User, bool>> where)
         {
             if (where == null)
                 where = PredicateBuilder.True<User>();             
             return userContext.Find(where);
         }

         /// <summary>
         /// 获取指定ID的信息
         /// </summary>
         /// <param name="id"></param>
         /// <returns></returns>
         public User GetUserByID(int id)
         {
             return userContext.FindByKey(id, "UserID");
         }

         /// <summary>
         /// 通过指定条件获取用户信息
         /// </summary>
         /// <param name="filter">筛选条件</param>
         /// <returns></returns>
         public User GetUserByFilter(Expression<Func<User, bool>> filter)
         {
             return userContext.SingleOrDefault(filter);
         }

         /// <summary>
         /// 获取分享Patient给指定用户的用户
         /// </summary>
         /// <param name="userID">用户ID</param>
         /// <param name="where"></param>
         /// <returns></returns>
         public IList<User> GetSharedPatientsUsers(int userID)
         {
             return GetSharedPatientsUsers(userID, null);
         }

        /// <summary>
        /// 获取分享Patient给指定用户的用户
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <param name="where"></param>
        /// <returns></returns>
         public IList<User> GetSharedPatientsUsers(int userID, Expression<Func<User, bool>> where)
         {
             if (where == null)
                 where = PredicateBuilder.True<User>();
            return entities.UserPatientPermissions.Where(u => u.UserID == userID).Select(up => up.Patient.User).Distinct().Where(where).ToList();
         }
         /// <summary>
         /// 根据用户的站点编号，获取站点名称
         /// </summary>
         /// <param name="id"></param>
         /// <returns></returns>
         public String GetSiteName(int? id)
         {
             SiteBll bll = new SiteBll();
             if (id != null)
             {
                 Site site = bll.GetSiteByID(id.Value);
                 if(site!= null)
                    return site.SiteName;
             }
             return null;
         }
    }


    public class UserBO : BOBase<UserBO>
    {
        #region 用户登陆
        public bool login(string username, string password)
        {
            if (string.IsNullOrEmpty(username))
            {
                throw new Exception("");
            }
            if (string.IsNullOrEmpty(password))
            {
                throw new Exception("");
            }


            return true;
        }

        public void SetUserLogin()
        {
 
        }

        public void Logout()
        {
 
        }
        #endregion  

        #region 获取用户相关下拉列表
        /// <summary>
        /// 获取用户类型下拉列表
        /// </summary>
        /// <returns></returns>
        public SelectList GetUserTypes()
        {
            UserTypeBll bll = new UserTypeBll();
            IList<UserType> types = bll.GetAllUserTypes();
            SelectList selTypes = new SelectList(types, "UserTypeID", "TypeName");
            return selTypes;
        }

        /// <summary>
        /// 获取用户下拉列表
        /// </summary>
        /// <returns></returns>
        public SelectList GetUsers()
        {
            UserBll userBll = new UserBll();
            IList<User> users = userBll.GetAllUsers();
            SelectList selUsers = new SelectList(users, "UserID", "UserName");
            return selUsers;
        }

        /// <summary>
        /// 获取站点下拉列表
        /// </summary>
        /// <returns></returns>
        public SelectList GetSites()
        {
            SiteBll siteBll = new SiteBll();
            IList<Site> sites = siteBll.GetAllSite();
            SelectList selSiteItem = new SelectList(sites, "SiteID", "SiteName");
            return selSiteItem;
        }

        #endregion

    }
}
