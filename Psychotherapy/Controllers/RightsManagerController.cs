using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Psychotherapy.Utility;
using Insourcia.WebControls.MvcPaging;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Common.Web;
using LinqKit;
using System.Linq.Expressions;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.Common;
using Resources;

namespace Insourcia.Psychotherapy.Controllers
{
    public class RightsManagerController : SysBaseController
    {
        //
        // GET: /Rights/
        #region Rights manage

        public ActionResult RightsList(int? id)
        {
            RightsManager rights = new RightsManager();
            IPagedList<SystemFunction> list = rights.GetPagingRights(null, id ?? 0, 20);
            return View(list);
        }

        public ActionResult GetPagedRightsList(int? id)
        {
            string strFunName = HttpRequestUtils.GetString("txtRightsName", "");
            Expression<Func<SystemFunction, bool>> filter = PredicateBuilder.True<SystemFunction>();
            if (!string.IsNullOrEmpty(strFunName))
                filter = filter.And(s => s.FunctionName.Contains(strFunName));
            try
            {
                RightsManager bll = new RightsManager();
                IPagedList<SystemFunction> list = bll.GetPagingRights(filter, id ?? 0, 20);

                return PartialView("UcRightsList", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "GetPagedRightsList", ex);
                return PartialView("Error");
            }
        }

        public ActionResult GetPagedRightsOfGroupList(int? id)
        {
            string strFunName = HttpRequestUtils.GetString("txtRightsName", "");
            int groupID = Converter.ToInt(HttpRequestUtils.GetString("groupid", ""), 0);
            Expression<Func<SystemFunction, bool>> filter = PredicateBuilder.True<SystemFunction>();
            if (!string.IsNullOrEmpty(strFunName))
                filter = filter.And(s => s.FunctionName.Contains(strFunName));
            try
            {
                RightsManager bll = new RightsManager();
                IPagedList<SystemFunction> list = new PagedList<SystemFunction>(null, 1, 20, 0);
                if (groupID.Equals(Guid.Empty))
                {
                    list = bll.GetPagingRights(filter, id ?? 0, 20);
                }
                else
                {
                    list = bll.GetRightsListByGroup(id ?? 1, 20, groupID, filter);
                }
                return PartialView("RightsOfGroupList", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "GetPagedRightsList", ex);
                return PartialView("Error");
            }
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddOrEditRights(FormCollection collect)
        {
            string funName = collect["txtFunName"] ?? string.Empty;
            string funUrl = collect["txtFunUrl"] ?? string.Empty;
            string description = collect["txtDesc"] ?? string.Empty;
            int funID = Converter.ToInt(collect["hdFunID"], 0);

            funName = funName.Trim();
            funUrl = funUrl.Trim();
            description = description.Trim();

            String msg = String.Empty;
            if (string.IsNullOrEmpty(funName))
                msg += Resource.Rights_FunctionNameRequired;
            if (string.IsNullOrEmpty(funUrl))
                msg += Resource.Rights_FunctionUrlRequired;
            if (string.IsNullOrEmpty(description))
                msg += Resource.Rights_FunDescRequired;
            //数据验证
            if (!string.IsNullOrEmpty(msg))
            {
                return Json(new { Success = false, ErrorMsg = msg });
            }

            SystemFunction rights = new SystemFunction
            {
                FunctionName = funName,
                FunctionUrl = funUrl,
                Description = description,
                FunctionID = funID
            };



            try
            {
                RightsManager bll = new RightsManager();
                //添加
                if (bll.AddOrUpdateRights(rights))
                {
                    return Json(new { Success = true, FunID = rights.FunctionID, CreatedTime = rights.time_created.ToString(), ErrorMsg = "" });
                }
                else
                {
                    return Json(new { Success = false, ErrorMsg = Resource.Common_OperationFailed });
                }
            }
            catch (Exception ex)
            {
                //记录日志 
                LogHelper.ErrorToDb("RightsManager", "AddOrEditRights", ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult DeleteRights(FormCollection forms)
        {

            string[] arStrFunID = forms.GetValues("chkRights");
            if (arStrFunID == null || arStrFunID.Length == 0)
                return Json(new { Success = false, ErrorMsg = Resource.Rights_RequiredSelect });

            try
            {
                int[] arFunID = Array.ConvertAll<string, int>(arStrFunID, s => Converter.ToInt(s));
                if (arFunID.Length == 0)
                    return Json(new { Success = false, ErrorMsg = Resource.Common_WrongParameter });
                RightsManager bll = new RightsManager();
                if (bll.DeleteRights(arFunID) > 0)
                {
                    return Json(new { Success = true, FunIDs = arFunID, ErrorMsg = "" });
                }
                else
                {
                    return Json(new { Success = false, ErrorMsg = Resource.Common_OperationFailed });
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "DeleteRights", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }

        }
        #endregion

        #region Group manage
        /// <summary>
        /// 组信息列表
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult GroupList(int? id)
        {
            RightsManager bll = new RightsManager();
            IPagedList<Group> list = bll.GetPagingGroups(id ?? 1, 20, null);
            return View(list);
        }

        public ActionResult GetPagedGroupList(int? id)
        {
            string strGroupName = HttpRequestUtils.GetString("txtGroupName", "");
            Expression<Func<Group, bool>> filter = PredicateBuilder.True<Group>();
            if (!string.IsNullOrEmpty(strGroupName))
                filter = filter.And(g => g.GroupName.Contains(strGroupName));
            try
            {
                RightsManager bll = new RightsManager();
                IPagedList<Group> list = bll.GetPagingGroups(id ?? 1, 20, filter);
                return PartialView("UcGroupList", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "GetPagedGroupList", ex);
                return PartialView("Error");
            }
        }


        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AddOrEditGroup(FormCollection collect)
        {
            string groupName = collect["txtGroupName"] ?? string.Empty;
            string description = collect["txtDesc"] ?? string.Empty;
            int groupID = Converter.ToInt(collect["hdGroupID"], 0);
            groupName = groupName.Trim();
            description = description.Trim();
            String msg = String.Empty;
            if (string.IsNullOrEmpty(groupName))
                msg += Resource.Rights_FunctionNameRequired;
            if (string.IsNullOrEmpty(description))
                msg += Resource.Rights_FunDescRequired;
            //数据验证
            if (!string.IsNullOrEmpty(msg))
            {
                return Json(new { Success = false, ErrorMsg = msg });
            }

            Group group = new Group
            {
                GroupName = groupName,
                Description = description,
                GroupID = groupID
            };



            try
            {
                RightsManager bll = new RightsManager();
                //添加
                if (bll.AddOrUpdateGroup(group))
                {
                    return Json(new { Success = true, GroupID = group.GroupID, ErrorMsg = "" });
                }
                else
                {
                    return Json(new { Success = false, ErrorMsg = Resource.Common_OperationFailed });
                }
            }
            catch (Exception ex)
            {
                //记录日志 
                LogHelper.ErrorToDb("RightsManager", "AddOrEditGroup", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult DeleteGroup(FormCollection collect)
        {
            int[] gIDs = HttpRequestUtils.FormIntArray("chkGroup");
            if (gIDs.Length == 0) Json(new { Success = false, ErrorMsg = Resource.Common_RequiedSelectItem });
            try
            {
                RightsManager bll = new RightsManager();

                if (bll.DeleteGroups(gIDs) > 0)
                {
                    return Json(new { Success = true, GroupIDs = gIDs, ErrorMsg = "" });
                }
                else
                {
                    return Json(new { Success = false, ErrorMsg = Resource.Common_OperationFailed });
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "DeleteGroup", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }
        }

        #endregion

        #region  Group's rights manage

        public ActionResult ViewGroup(int? id)
        {
            int groupID = HttpRequestUtils.QueryInt("groupid", 0);
            ViewData["PrePageIndex"] = HttpRequestUtils.QueryInt("page", 1);
            RightsManager bll = new RightsManager();
            IPagedList<SystemFunction> list = bll.GetRightsListByGroup(id ?? 1, 20, groupID, null);
            ViewData["GroupID"] = groupID;
            return View(list);
        }

        //public ActionResult Get

        public ActionResult AssignRightsToGroup(int? id)
        {
            try
            {
                string groupIDs = Request.QueryString["chkGroup"] ?? string.Empty;

                ViewData["GroupIDs"] = groupIDs;
                //记录上一个页面的页索引
                ViewData["PrePageIndex"] = HttpRequestUtils.QueryInt("page", 1);
                RightsManager bll = new RightsManager();
                IPagedList<SystemFunction> list = bll.GetPagingRights(null, id ?? 1, 20);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "AssignRightsToGroup", ex);
                return PartialView("Error");
            }
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AssignRightsToGroup(FormCollection collect)
        {
            string strIDs = HttpRequestUtils.FormString("hdGroupIDs", string.Empty);
            string[] arrIDs = strIDs.Split(',');
            int[] gpIDs = Array.ConvertAll<string, int>(arrIDs, s => Converter.ToInt(s));
            int[] rightsIDs = HttpRequestUtils.FormIntArray("chkRights");

            if (gpIDs == null || gpIDs.Length == 0)
                return Json(new { Success = true, ErrorMsg = Resource.Common_ReadPageDataFailed });
            if (rightsIDs == null || rightsIDs.Length == 0) return Json(new { Success = true, ErrorMsg = Resource.Rights_RequiredSelect });
            try
            {
                RightsManager bll = new RightsManager();
                if (bll.AddGroupRights(gpIDs, rightsIDs) > 0)
                {
                    return Json(new { Success = true, ErrorMsg = "" });
                }
                else
                {
                    return Json(new { Success = false, ErrorMsg = Resource.Common_OperationFailed });
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "AssignRightsToGroup", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult RemoveRights(FormCollection collect)
        {
            int groupID = HttpRequestUtils.FormInt("hdGroupID", 0);
            if (groupID.Equals(Guid.Empty))
                return Json(new { Success = false, ErrorMsg = Resource.Common_ReadPageDataFailed });
            int[] rightsIDs = HttpRequestUtils.FormIntArray("chkRights");
            if (rightsIDs == null || rightsIDs.Length == 0)
                return Json(new { Success = false, ErrorMsg = Resource.Rights_RequiredSelect });
            try
            {
                RightsManager bll = new RightsManager();
                if (bll.DeleteGroupRights(groupID, rightsIDs) > 0)
                {
                    return Json(new { Success = true, FunIDs = rightsIDs, ErrorMsg = "" });
                }
                else
                {
                    return Json(new { Success = false, ErrorMsg = Resource.Common_OperationFailed });
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "RemoveRights", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }

        }
        #endregion

        #region Grouping users

        public ActionResult ViewUserGroup(int? id)
        {
            try
            {
                int userID = HttpRequestUtils.QueryInt("ckbUser", 0);
                if (userID == 0)
                    return Content(Resource.Common_ReadPageDataFailed);
                int prePageIndex = HttpRequestUtils.QueryInt("upage", 1);
                UserBll userBll = new UserBll();
                User user = userBll.GetModel(u => u.UserID == userID);
                RightsManager bll = new RightsManager();
                IPagedList<Group> userGroups = bll.GetGroupsByUser(userID, id ?? 1, 20, null);
                ViewData["UserName"] = user.FirstName + " " + user.LastName;
                ViewData["UserID"] = userID;
                ViewData["PrePageIndex"] = prePageIndex;
                return View(userGroups);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "ViewUserGroup", ex);
                return PartialView("Error");
            }
        }

        public ActionResult GetPagedGroupOfUserList(int? id)
        {
            string strGroupName = HttpRequestUtils.GetString("txtGroupName", string.Empty);
            Expression<Func<Group, bool>> filter = PredicateBuilder.True<Group>();
            if (!string.IsNullOrEmpty(strGroupName))
                filter = filter.And(g => g.GroupName.Contains(strGroupName));

            try
            {
                int userID = Converter.ToInt(HttpRequestUtils.GetString("hdSearchUid", ""), 0);

                IPagedList<Group> userGroups = new PagedList<Group>(null, 1, 20, 0);
                RightsManager bll = new RightsManager();
                if (userID != 0)
                {
                    userGroups = bll.GetGroupsByUser(userID, id ?? 1, 20, filter);
                }
                else
                {
                    userGroups = bll.GetPagingGroups(id ?? 1, 20, filter);
                }

                return PartialView("GroupOfUserList", userGroups);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "GetPagedGroupList", ex);
                return PartialView("Error");
            }
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult RemoveUserGroups(FormCollection collect)
        {
            int userID = HttpRequestUtils.FormInt("hdUserID", 0);
            if (userID==0)
                return Json(new { Success = false, ErrorMsg = Resource.Common_ReadPageDataFailed });
            int[] groupIDs = HttpRequestUtils.FormIntArray("chkGroup");
            if (groupIDs == null || groupIDs.Length == 0)
                return Json(new { Success = false, ErrorMsg = Resource.Common_RequiedSelectItem });
            try
            {
                RightsManager bll = new RightsManager();

                bll.DeleteUserGroups(userID, groupIDs);
                return Json(new { Success = true, GroupIDs = groupIDs, ErrorMsg = "" });

            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "RemoveUserGroups", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }
        }

        public ActionResult AssignGroupToUser(int? id)
        {
            try
            {
                int PrePageIndex = HttpRequestUtils.QueryInt("hdPage", 1);

                ViewData["UserID"] = HttpRequestUtils.GetString("uid", string.Empty);
                ViewData["PrePageIndex"] = PrePageIndex;
                RightsManager bll = new RightsManager();
                IPagedList<Group> list = bll.GetPagingGroups(id ?? 1, 20, null);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "AssignGroupToUser", ex);
                return PartialView("Error");
            }
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult AssignGroupToUser(FormCollection collect)
        {
            int userID = HttpRequestUtils.FormInt("hdUserID", 0);
            //string[] uIDs = userID.Split(',');
            //int[] userIDs = Array.ConvertAll<string, int>(uIDs, s => Converter.ToInt(s));
            int[] groupIDs = HttpRequestUtils.FormIntArray("chkGroup");
            if (userID == 0)
                return Json(new { Success = false, ErrorMsg = Resource.Common_ReadPageDataFailed });

            if (groupIDs == null || groupIDs.Length == 0)
                return Json(new { Success = false, ErrorMsg = Resource.Common_RequiedSelectItem });
            try
            {
                RightsManager bll = new RightsManager();
                bll.SetUsersGroups(userID, groupIDs);
                return Json(new { Success = true, ErrorMsg = "" });

            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("RightsManager", "AssignGroupToUser", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }
        }
        #endregion

    }
}
