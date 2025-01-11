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
    public class RightsManager
    {
        private IRepository<User> userContext;
        private IRepository<SystemFunction> funcContext;
        private IRepository<Group> groupContext;
        private PsychotherapyEntities entities;
        #region Constructors
        public RightsManager()
        {
            entities = new PsychotherapyEntities();
            userContext = new Repository<User>(entities);
            funcContext = new Repository<SystemFunction>(entities);
            groupContext = new Repository<Group>(entities);
        }
        #endregion

        #region Rights
        /// <summary>
        /// 添加权限
        /// </summary>
        /// <param name="sysFunction"></param>
        /// <returns></returns>
        public bool AddRights(SystemFunction sysFunction)
        {
            if (sysFunction == null) throw new ArgumentNullException("sysFunction");
            try
            {
                SystemFunction fun = funcContext.FirstOrDefault(s => s.FunctionName.Equals(sysFunction.FunctionName));
                if (fun != null) throw new Exception(string.Format(BllResource.Common_ObjectAlreadyExist, "function name"));
                sysFunction.is_valid = true;
                sysFunction.time_created = DateTime.Now;
                sysFunction.last_modified = DateTime.Now;
                sysFunction.last_modified_by = 0;//默认值               
                funcContext.Add(sysFunction);
                return funcContext.Save() > 0;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



        /// <summary>
        /// 修改权限
        /// </summary>
        /// <param name="sysFunction"></param>
        /// <returns></returns>
        public bool UpdateRights(SystemFunction sysFunction)
        {
            if (sysFunction == null) throw new ArgumentNullException("sysFunction");
            if (sysFunction.FunctionID <= 0) return false;

            sysFunction.last_modified = DateTime.Now;
            funcContext.Update(sysFunction);
            return funcContext.Save() > 0;


        }


        /// <summary>
        /// 添加或者修改权限，当SystemFunction的function_id为0时表示添加，否则修改
        /// </summary>
        /// <param name="sysFunction">SystemFunction对象</param>
        /// <returns></returns>
        public bool AddOrUpdateRights(SystemFunction sysFunction)
        {
            if (sysFunction == null) throw new ArgumentNullException("sysFunction");
            //添加权限
            if (sysFunction.FunctionID == 0)
            {
                return AddRights(sysFunction);
            }
            else
            {//修改权限
                return UpdateRights(sysFunction);
            }
        }


        /// <summary>
        /// 删除权限
        /// </summary>
        /// <param name="functionID"></param>
        /// <returns></returns>
        public bool DeleteRights(int functionID)
        {
            if (functionID == 0) throw new ArgumentException(string.Format(BllResource.Common_ValueNotValid, functionID));
            try
            {

                SystemFunction function = funcContext.FirstOrDefault(s => s.FunctionID == functionID);
                if (function == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "Rights"));

                funcContext.Delete(function);
                return funcContext.Save() > 0;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        /// <summary>
        /// 批量 删除权限
        /// </summary>
        /// <param name="arFunID"></param>
        /// <returns></returns>
        public int DeleteRights(int[] arFunID)
        {
            if (arFunID == null || arFunID.Length == 0) return 0;
            try
            {
                int count = 0;
                foreach (int funID in arFunID)
                {
                    count = count + funcContext.Delete(s => s.FunctionID == funID);
                }
                return count;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public IPagedList<SystemFunction> GetPagingRights(Expression<Func<SystemFunction, bool>> expr, int pageIndex, int pageSize)
        {
            if (expr == null)
                expr = PredicateBuilder.True<SystemFunction>();
            int index = pageIndex;
            int totalCount;
            IList<SystemFunction> list = funcContext.FindOrderBy<string>(expr, s => s.FunctionName, ref index, pageSize, out totalCount);
            return list.ToPagedList<SystemFunction>(index, pageSize, totalCount);
        }


        /// <summary>
        /// 分页获取指定组的权限列表
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="gpID"></param>
        /// <returns></returns>
        public IPagedList<SystemFunction> GetRightsListByGroup(int pageIndex, int pageSize, int gpID, Expression<Func<SystemFunction, bool>> expr)
        {
            if (expr == null)
                expr = PredicateBuilder.True<SystemFunction>();
            expr = expr.And(s => s.Groups.Any(g => g.GroupID == gpID));
            int index = pageIndex;
            int totalCount;
            IList<SystemFunction> list = funcContext.FindOrderBy<string>(expr, s => s.FunctionName, ref index, pageSize, out totalCount);
            return list.ToPagedList(index, pageSize, totalCount);

        }

        /// <summary>
        /// 获取未分派到给定组的权限
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="gpID"></param>
        /// <returns></returns>
        public IPagedList<SystemFunction> GetExceptGroupRights(int pageIndex, int pageSize, int gpID)
        {
            return GetExceptGroupRights(gpID).OrderByDescending<SystemFunction, string>(s => s.FunctionName).ToPagedList(pageIndex, pageSize);
        }

        /// <summary>
        /// 获取未分派到给定组的权限
        /// </summary>
        /// <param name="gpID"></param>
        /// <param name="db"></param>
        /// <returns></returns>
        internal IQueryable<SystemFunction> GetExceptGroupRights(int gpID)
        {
            IQueryable<SystemFunction> query = funcContext.Query(s => s.Groups.FirstOrDefault().GroupID == gpID);
            return funcContext.QueryAll().Except<SystemFunction>(query);
        }

        #endregion

        #region Group and Rights mapping

        /// <summary>
        /// 添加组的权限
        /// </summary>
        /// <param name="group">组</param>
        /// <param name="rights">权限</param>
        /// <returns></returns>
        public bool AddGroupRights(Group group, SystemFunction rights)
        {
            if (group == null) throw new ArgumentNullException("group");
            if (rights == null) throw new ArgumentNullException("rights");
            Group origGroup = groupContext.FirstOrDefault(gp => gp.GroupID == group.GroupID);
            if (origGroup == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "group"));
            SystemFunction origRights = funcContext.FirstOrDefault(s => s.FunctionID == rights.FunctionID);
            if (origRights == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "Rights"));
            origGroup.SystemFunctions.Add(origRights);
            return groupContext.Save() > 0;
        }


        /// <summary>
        /// 给组添加权限
        /// </summary>
        /// <param name="group"></param>
        /// <param name="sysFunList"></param>
        /// <param name="db"></param>
        internal void AddGroupRights(Group group, IList<SystemFunction> sysFunList)
        {
            if (group == null) throw new ArgumentNullException("group");
            if (sysFunList == null || sysFunList.Count == 0) throw new ArgumentNullException("rightsList");
            Group gp = groupContext.FirstOrDefault(g => g.GroupID == group.GroupID);
            if (gp == null) throw new Exception("");
            foreach (SystemFunction f in sysFunList)
            {
                SystemFunction fun = funcContext.FirstOrDefault(s => s.FunctionID == f.FunctionID);
                if (fun == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "rights"));
                group.SystemFunctions.Add(fun);
            }
        }

        /// <summary>
        /// 批量添加组权限
        /// </summary>
        /// <param name="groupIDs"></param>
        /// <param name="rightsIDs"></param>
        /// <returns></returns>
        public int AddGroupRights(int[] groupIDs, int[] rightsIDs)
        {
            if (groupIDs == null || groupIDs.Length <= 0) throw new ArgumentNullException("groupIDs");
            if (rightsIDs == null || rightsIDs.Length <= 0) throw new ArgumentNullException("rightsIDs");


            foreach (int gpID in groupIDs)
            {
                Group group = groupContext.FirstOrDefault(g => g.GroupID == gpID);
                if (group == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "group"));

                foreach (int rID in rightsIDs)
                {
                    SystemFunction rights = funcContext.FirstOrDefault(s => s.FunctionID == rID);
                    if (rights == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "rights"));

                    group.SystemFunctions.Add(rights);
                }
            }
            return groupContext.Save();


        }

        /// <summary>
        /// 删除所有组的指定的权限
        /// </summary>
        /// <param name="functionID"></param>
        /// <param name="db"></param>
        internal void DeleteGroupRightsByFunID(int functionID)
        {
            SystemFunction func = entities.SystemFunctions.FirstOrDefault(s => s.FunctionID == functionID);
            entities.Groups.ForEach(g => g.SystemFunctions.Remove(func));
        }

        /// <summary>
        /// 删除指定组的所有权限
        /// </summary>
        /// <param name="groupID"></param>
        /// <param name="db"></param>
        internal void DeleteGroupRightsByGroupID(int groupID)
        {
            groupContext.FirstOrDefault(g => g.GroupID == groupID).SystemFunctions.Clear();
        }

        /// <summary>
        /// 删除指定组的指定权限
        /// </summary>
        /// <param name="groupID"></param>
        /// <param name="funIDs"></param>
        /// <returns></returns>
        public int DeleteGroupRights(int groupID, int[] funIDs)
        {
            if (groupID == 0) throw new Exception(string.Format(BllResource.Common_ValueNotValid, groupID));
            Group group = groupContext.FindByKey<int>(groupID, "GroupID");
            if (group == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "Group"));

            foreach (int funid in funIDs)
            {
                SystemFunction func = group.SystemFunctions.FirstOrDefault(s => s.FunctionID == funid);
                if (func == null) continue;
                group.SystemFunctions.Remove(func);
            }
            return groupContext.Save();
        }

        ///// <summary>
        ///// 分页获取组、包括权限影射信息
        ///// </summary>
        ///// <param name="pageIndex"></param>
        ///// <param name="pageSize"></param>
        ///// <returns></returns>
        //public static IPagedList<Group> GetPagingGroupRights(int pageIndex, int pageSize)
        //{
        //    try
        //    {
        //        using (VeragenLegalEntities db = DBModel.GetDB())
        //        {
        //            //db.Group.Include("
        //            Expression<Func<Group, bool>> expr = PredicateBuilder.True<Group>();
        //            return GetGroupRights(expr, db).OrderByDescending<Group, DateTime>(ug => ug.time_created).ToPagedList(pageIndex, pageSize);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}



        #endregion

        #region Group

        /// <summary>
        /// 添加用户组
        /// 注：未级group_id赋值
        /// </summary>
        /// <param name="group"></param>
        /// <returns></returns>
        public bool AddGroup(Group group)
        {
            if (group == null) throw new ArgumentNullException("group");
            group.IsValid = true;
            groupContext.Add(group);
            return groupContext.Save() > 0;
        }

        ///// <summary>
        ///// 添加用户组,
        ///// 注：此方法会给group_id赋新值
        ///// </summary>
        ///// <param name="group"></param>
        ///// <param name="db"></param>
        //internal static void AddGroup(Group group)
        //{
        //    if (group == null) throw new ArgumentNullException("group");
        //    Group gp = db.Group.FirstOrDefault<Group>(g => g.group_name.Equals(group.group_name));
        //    if (gp != null) throw new Exception(string.Format(DOResource.Common_ObjectAlreadyExist, "group name"));
        //    group.group_id = Guid.NewGuid();
        //    group.last_modified = DateTime.Now;
        //    group.time_created = DateTime.Now;
        //    group.last_modified_by = Guid.Empty;
        //    db.AddToGroup(group);
        //}

        /// <summary>
        /// 修改组信息
        /// </summary>
        /// <param name="sysFunction"></param>
        /// <returns></returns>
        public bool UpdateGroup(Group group)
        {
            if (group == null) throw new ArgumentNullException("group");
            if (group.GroupID == 0) return false;
            groupContext.Update(group);
            return groupContext.Save() > 0;

        }

        ///// <summary>
        ///// 修改组信息
        ///// </summary>
        ///// <param name="sysFunction"></param>
        ///// <param name="db"></param>
        //internal static void UpdateGroup(Group group, VeragenLegalEntities db)
        //{
        //    Group gp = db.Group.FirstOrDefault<Group>(g => g.group_id == group.group_id);
        //    if (gp == null) throw new Exception(string.Format(DOResource.Common_ObjectNotExist, "group"));
        //    Group gpIsNull = db.Group.FirstOrDefault<Group>(g => g.group_name.Equals(group.group_name) && g.group_id != group.group_id);
        //    if (gpIsNull != null) throw new Exception(string.Format(DOResource.Common_ObjectAlreadyExist, "group name"));

        //    gp.group_name = group.group_name;
        //    gp.description = group.description;
        //    gp.last_modified = DateTime.Now;
        //    gp.last_modified_by = group.last_modified_by;
        //}


        /// <summary>
        /// 添加或者修改组信息，当Group的group_id为Guid.Empty时表示添加，否则修改
        /// </summary>
        /// <param name="sysFunction">Group对象</param>
        /// <returns></returns>
        public bool AddOrUpdateGroup(Group group)
        {
            if (group == null) throw new ArgumentNullException("group");
            //添加组信息
            if (group.GroupID == 0)
            {
                return AddGroup(group);
            }
            else
            {//修改组信息
                return UpdateGroup(group);
            }
        }

        public bool DeleteGroup(int groupID)
        {
            if (groupID == 0) throw new Exception(string.Format(BllResource.Common_ValueNotValid, groupID));
            Group group = groupContext.FindByKey<int>(groupID, "GroupID");
            groupContext.Delete(group);
            return groupContext.Save() > 0;
        }



        /// <summary>
        /// 批量删除组信息
        /// </summary>
        /// <param name="groupIDs"></param>
        /// <returns></returns>
        public int DeleteGroups(int[] groupIDs)
        {
            if (groupIDs == null || groupIDs.Length == 0) return 0;
            Expression<Func<Group, bool>> where = PredicateBuilder.WhereIn<Group, int>(g => g.GroupID, groupIDs);

            return groupContext.Delete(where);
        }



        /// <summary>
        /// 分页获取组信息
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public IPagedList<Group> GetPagingGroups(int pageIndex, int pageSize, Expression<Func<Group, bool>> expr)
        {
            if (expr == null)
                expr = PredicateBuilder.True<Group>();
            int index = pageIndex;
            int totalCount;

            IList<Group> list = groupContext.FindOrderBy<string>(expr, g => g.GroupName, ref index, pageSize, out totalCount);
            return list.ToPagedList(index, pageSize, totalCount);

        }

        /// <summary>
        /// 通过权限ID获取所有拥有该权限的组
        /// </summary>
        /// <param name="rightsID"></param>
        /// <param name="db"></param>
        /// <returns></returns>
        internal IQueryable<Group> GetGroupsByFunID(int funID)
        {
            return entities.Groups.Where(g => g.SystemFunctions.Any(s => s.FunctionID == funID));
            //return GetUserOrGroupAccessRights(gr => gr.function_id == funID, db).Select<UserOrGroupAccessRights, Group>(gr => gr.Group);
        }

        /// <summary>
        /// 通过权限名称获取所有拥有该权限的组
        /// </summary>
        /// <param name="funName"></param>
        /// <param name="db"></param>
        /// <returns></returns>
        internal IQueryable<Group> GetGroupsByFunName(string funName)
        {
            return entities.Groups.Where(g => g.SystemFunctions.Any(s => s.FunctionName == funName));
            //return GetUserOrGroupAccessRights(gr => gr.SystemFunction.function_name == funName, db).Select<UserOrGroupAccessRights, Group>(gr => gr.Group);
        }


        #endregion

        #region User and Group mapping

        /// <summary>
        /// 添加用户到组
        /// </summary>
        /// <param name="user">用户</param>
        /// <param name="group">组</param>
        /// <returns></returns>
        public bool AddUserToGroup(User user, Group group)
        {
            if (user == null) throw new ArgumentNullException("user");
            if (group == null) throw new ArgumentNullException("group");

            User origUser = entities.Users.FirstOrDefault<User>(u => u.UserID == user.UserID);
            if (origUser == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "user"));
            Group origGroup = groupContext.FirstOrDefault(g => g.GroupID == group.GroupID);
            if (origGroup == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "group"));

            origUser.Groups.Add(origGroup);
            return groupContext.Save() > 0;

        }

        /// <summary>
        /// 给组添加用户
        /// 建议：如果用户数多于组的数量使用此方法，如果少于组的数量建议调用AssignGroupsToUsers 方法
        /// </summary>       
        /// <param name="groupIDs"></param>
        /// <param name="userIDs"></param>
        public int AddUsersToGroups(int[] groupIDs, int[] userIDs)
        {
            if (userIDs == null) throw new ArgumentNullException("userIDs");
            if (groupIDs == null) throw new ArgumentNullException("groupIDs");

            foreach (int gpID in groupIDs)
            {
                Group group = groupContext.FirstOrDefault(g => g.GroupID == gpID);
                if (group == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "group"));
                foreach (int userID in userIDs)
                {
                    User user = entities.Users.FirstOrDefault<User>(u => u.UserID == userID);
                    if (user == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "user"));
                    group.Users.Add(user);
                }
            }
            return groupContext.Save();

        }

        /// <summary>
        /// 给用户设置组
        /// 建议：如果组数量多于用户的数量使用此方法，如果组数量少于用户的数量建议调用AddUsersToGroups 方法
        /// </summary>
        /// <param name="userIDs"></param>
        /// <param name="groupIDs"></param>
        /// <returns></returns>
        public int AssignGroupsToUsers(int[] userIDs, int[] groupIDs)
        {
            if (userIDs == null) throw new ArgumentNullException("userIDs");
            if (groupIDs == null) throw new ArgumentNullException("groupIDs");

            foreach (int userID in userIDs)
            {
                User user = entities.Users.FirstOrDefault<User>(u => u.UserID == userID);
                if (user == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "user"));
                foreach (int gpID in groupIDs)
                {
                    Group group = groupContext.FirstOrDefault(g => g.GroupID == gpID);
                    if (group == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "group"));
                    user.Groups.Add(group);
                }
            }
            return groupContext.Save();

        }

        /// <summary>
        /// 设置用户组，即是设置用户的权限
        /// 此方法会判断用户和组的数量以决定调用AddUsersToGroups还是AssignGroupsToUsers。
        /// 这两个方法实现的功能没什么分别，只是出于性能考虑，也可以直接调用它们
        /// </summary>
        /// <param name="userIDs"></param>
        /// <param name="groupIDs"></param>
        /// <returns></returns>
        public int SetUsersGroups(int[] userIDs, int[] groupIDs)
        {
            if (userIDs == null) throw new ArgumentNullException("userIDs");
            if (groupIDs == null) throw new ArgumentNullException("groupIDs");
            if (userIDs.Length == 0 || groupIDs.Length == 0) return 0;

            if (userIDs.Length > groupIDs.Length)
            {
                return AddUsersToGroups(groupIDs, userIDs);
            }
            else
            {
                return AssignGroupsToUsers(userIDs, groupIDs);
            }
        }

        /// <summary>
        /// 给指定用户设置组
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="groupIDs"></param>
        /// <returns></returns>
        public int SetUsersGroups(int userID, int[] groupIDs)
        {
            if (userID == 0)
                throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "User"));
            User user = userContext.FirstOrDefault(u => u.UserID == userID);
            if (user == null)
                throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "User"));
            foreach (var groupID in groupIDs)
            {
                Group group = groupContext.FirstOrDefault(g => g.GroupID == groupID);
                if (group == null) continue;
                user.Groups.Add(group);
            }
            return userContext.Save();

        }


        /// <summary>
        /// 删除指定用户的权限组
        /// </summary>
        /// <param name="groupID"></param>
        /// <param name="funIDs"></param>
        /// <returns></returns>
        public int DeleteUserGroups(int userID, int[] groupIDs)
        {
            if (userID == 0) throw new Exception(string.Format(BllResource.Common_ValueNotValid, userID));
            if (groupIDs == null) throw new ArgumentNullException("groupIDs");
            if (groupIDs.Length == 0) return 0;
            User user = entities.Users.FirstOrDefault(u => u.UserID == userID);
            if (user == null) throw new Exception(string.Format(BllResource.Common_ObjectNotExist, "user"));
            foreach (int groupID in groupIDs)
            {
                Group group = user.Groups.FirstOrDefault(g => g.GroupID == groupID);
                user.Groups.Remove(group);
            }
            return entities.SaveChanges();

        }



        /// <summary>
        /// 分页获取用户的权限组
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public IPagedList<Group> GetGroupsByUser(int userID, int pageIndex, int pageSize, Expression<Func<Group, bool>> expr)
        {
            if (expr == null)
                expr = PredicateBuilder.True<Group>();
            expr = expr.And(g => g.Users.Any(u => u.UserID == userID));
            int index = pageIndex;
            int totalCount;
            IList<Group> list = groupContext.FindOrderBy<string>(expr, g => g.GroupName, ref index, pageSize, out totalCount);
            return list.ToPagedList(index, pageSize, totalCount);
        }
        #endregion

        #region user rights
        /// <summary>
        /// 判断指定用户是否有指定功能的权限，先根据组名判断，如果属于该组则返回true，
        /// 如果组名为空或者不存在该组名，则使用功能名称判断
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <param name="groupName">组名</param>
        /// <param name="funName">功能名称</param>
        /// <returns></returns>
        public bool HasPermission(int userID, string groupName, string funName)
        {

            //获取超级管理员组名
            string adminGroupName = "System Users";
            User user = entities.Users.FirstOrDefault(u => u.UserID == userID);
            if (user == null) return false;
            List<Group> userGroups = user.Groups.ToList();
            if (userGroups.FirstOrDefault(g => g.GroupName == adminGroupName) != null)
                return true;
            if (!string.IsNullOrEmpty(groupName) && userGroups.Exists(g => g.GroupName == groupName))
                return true;
            if (string.IsNullOrEmpty(funName)) return false;
            List<Group> rightsGroups = GetGroupsByFunName(funName).ToList();
            return userGroups.Intersect<Group>(rightsGroups).Count<Group>() > 0;
        }

        /// <summary>
        /// 获取指定用户所拥有的功能权限
        /// </summary>
        /// <param name="userID"></param>
        /// <returns></returns>
        public IList<SystemFunction> GetFunctionsByUser(int userID)
        {
            User user = entities.Users.FirstOrDefault(u => u.UserID == userID);
            return user.SystemFunctions.ToList();
        }

        #endregion


    }
}
