using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.WebControls.MvcPaging;
using Insourcia.Common.Web;
using Insourcia.Common;
using Insourcia.Psychotherapy.Controllers;
using Insourcia.Psychotherapy.Utility.Log;
using Psychotherapy.Utility;

namespace Psychotherapy.Controllers
{
    public class UserManageController : SysBaseController
    {
        public ActionResult Users(int? id)
        {
            try
            {
                UserBll bll = new UserBll();
                Expression<Func<User, bool>> filter = PredicateBuilder.True<User>();
                IPagedList<User> list = bll.GetPagedUserList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("UserManage", "Users", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult GetUsers(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                UserBll bll = new UserBll();
                Expression<Func<User, bool>> filter = PredicateBuilder.True<User>();
                if (!String.IsNullOrWhiteSpace(strKeyword))
                {
                    DateTime time = Converter.ToDateTime(strKeyword, DateTime.MinValue);
                    filter = p => (p.EmployeeNumber.Contains(strKeyword) ||p.FirstName.Contains(strKeyword)||p.MiddleName.Contains(strKeyword) || p.LastName.Contains(strKeyword));
                }
                IPagedList<User> list = bll.GetPagedUserList(id ?? 1, 12, filter);
                return View("UcUsers", list);

            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("UserManage", "GetUsers", ex);
                return PartialView("error");
            }
        }

        /// <summary>
        /// 显示新增用户的Action
        /// </summary>
        /// <returns></returns>
        public ActionResult NewUser()
        {
            try
            {
                UserBll bll = new UserBll();
                DepartmentManageController department = new DepartmentManageController();
                ViewData["slUserTypes"] = UserBO.Instance.GetUserTypes();
                ViewData["slSites"] = UserBO.Instance.GetSites();
                return View();
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("UserManage", "NewUser", ex);
                return PartialView("error");
            }
            
        }

        /// <summary>
        /// 提交新增用户的Action
        /// </summary>
        /// <param name="forms"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult NewUser(FormCollection forms, User user)
        {
            try
            {
                UserBll bll = new UserBll();
                user.TimeCreated = DateTime.Now;
                user.LastModified = DateTime.Now;
                user.LastModifiedBy = 0;
                user.IsValid = true;
                user.Profession = 0;
                if (bll.AddUser(user))
                {
                   
                }
                else
                {
 
                }
                ViewData["slUserTypes"] = UserBO.Instance.GetUserTypes();
                ViewData["slSites"] = UserBO.Instance.GetSites();
                return View(user);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("UserManage", "NewUser", ex);
                return View("error");
            }
            
        }

        /// <summary>
        /// 显式用户编辑的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult EditUser(int id)
        {
            try
            {
                UserBll bll = new UserBll();
                User user = bll.GetUserByID(id);
                DepartmentManageController department = new DepartmentManageController();
                if (user == null)
                {
                    ModelState.AddModelError("ErrorMsg", "this User is null");
                }
                ViewData["slUserTypes"] = UserBO.Instance.GetUserTypes();
                ViewData["slSites"] = UserBO.Instance.GetSites();
                return View(user);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("UserManage", "NewUser", ex);
                return PartialView("Error");
            }
        }

        /// <summary>
        /// 提交编辑用户的Action
        /// </summary>
        /// <param name="forms"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditUser(FormCollection forms, User user)
        {
            try
            {
                UserBll bll = new UserBll();
                user.LastModified = DateTime.Now;
                DepartmentManageController department = new DepartmentManageController();
                if (!bll.UpDateUser(user))
                {
                    ModelState.AddModelError("ErrorMsg", "the User Edit is failed");
                }
                ViewData["slUserTypes"] = UserBO.Instance.GetUserTypes();
                ViewData["slSites"] = UserBO.Instance.GetSites();
                return View(user);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("UserManage", "EditUser", ex);
                return View(user);
            }
        }

        /// <summary>
        /// 显式用户信息的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult UserInfo(int id)
        {
            try
            {
                UserBll bll = new UserBll();
                User user = bll.GetUserByID(id);
                if (user == null) return PartialView("Error");
                return View(user);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("UserManage", "UserInfo", ex);
                return PartialView("Error");
            }

        }
    }
}
