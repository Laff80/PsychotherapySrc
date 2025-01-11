using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Common;
using System.Collections;
using Insourcia.Psychotherapy.Utility.Log;

namespace Psychotherapy.Controllers
{
    public class SigninController : Controller
    {
        //
        // GET: /Signin/
        /// <summary>
        /// 显示登陆页面的Action
        /// </summary>
        /// <returns></returns>
        public ActionResult Login()
        {
            ViewData["siteItem"] = GetSiteItem(); 
            return View();
        }

        public ActionResult AdminLogIn()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AdminLogIn(User user,FormCollection forms)
        {
            int errorCount = Converter.ChangeType<int>(Session["errorCount"], 0);
           
            if (user.UserName == null || user.UserName.Length == 0)
            {
                return Json(new {Success = false, ErrorMsg = "User Name is Requred", errorCount=errorCount});
            }
           
            if(user.Password == null || user.Password.Length == 0)
            {
                return Json(new {Success = false,ErrorMsg = "Password is required",errorCount = errorCount});
            }
            string validateCode = forms["validateCode"];
            if(errorCount>=3)
            {
                 if (validateCode == null || string.IsNullOrWhiteSpace(validateCode))
                {
                    return Json(new { Success = false, ErrorMsg = "Vaildate code is required.", errorCount = errorCount });
                }
                else
                {
                    if (Session["ValidateCode"] == null) return RedirectToAction("Login", "AdminLogIn");
                    string codeSessionValue = Session["ValidateCode"].ToString();
                    if (codeSessionValue != validateCode)
                    {
                        return Json(new { Success = false, ErrorMsg = "Please enter a valid validate code.", errorCount = errorCount });
                    }
                }
            }
            try{
                UserBll bll = new UserBll();
                User targetUser = bll.GetUserByFilter(u => u.UserName == user.UserName);
                
                if (targetUser == null)
                {
                    return Json(new { Success = false, ErrorMsg = "User is not exists.", errorCount = errorCount, });
                }
                if (!targetUser.IsValid)
                {
                    return Json(new { Success = false, ErrorMsg = "Your account has been closed.", errorCount = errorCount });
                }
                if (targetUser.UserTypeID != 1)
                {
                    return Json(new { Success = false, ErrorMsg = "User is not Admin", errorCount = errorCount });
                }
             string md5PWD = Insourcia.Common.Security.Cryptography.MD5(user.Password);

                if (md5PWD == targetUser.Password)
                {
                    Session.Remove("errorCount");
                    Session["UserID"] = targetUser.UserID;
                    Session["UserName"] = targetUser.UserName;
                    return Json(new { Success = true });
                }
                else
                {
                    //开始记录次数
                    errorCount++;
                    Session["errorCount"] = errorCount;
                    if (errorCount >= 5)
                    {
                        targetUser.IsValid = false;
                        if (bll.UpDateUser(targetUser))
                        {
                            return Json(new { Success = false, ErrorMsg = "Your account has been closed.", errorCount = errorCount });
                        }
                    }
                    return Json(new { Success = false, ErrorMsg = "Password mistake " + errorCount, errorCount = errorCount + " times,more than five times will lock account " });
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Signin", "AdminLogIn", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message, errorCount = errorCount });
            }
        }

        public ActionResult AdminOff()
        {
            Session.Clear();
            return RedirectToAction("AdminLogin", "Signin");
        }
        /// <summary>
        /// 登陆主页的Action
        /// </summary>
        /// <param name="forms"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Login(FormCollection forms, User user)
        {
            int errorCount = Converter.ChangeType<int>(Session["errorCount"], 0);
            if (user.UserName == null || user.UserName.Length == 0)
            {
                return Json(new { Success = false, ErrorMsg = "User name is required.", errorCount = errorCount });
            }
            if (user.Password == null || user.Password.Length == 0)
            {
                return Json(new { Success = false, ErrorMsg = "Password is required.", errorCount = errorCount });
            }
            string validateCode = forms["validateCode"];
            if (errorCount >= 3)
            {
                if (validateCode == null || string.IsNullOrWhiteSpace(validateCode))
                {
                    return Json(new { Success = false, ErrorMsg = "Vaildate code is required.", errorCount = errorCount });
                }
                else
                {
                    if (Session["ValidateCode"] == null) return RedirectToAction("Login", "Signin");
                    string codeSessionValue = Session["ValidateCode"].ToString();
                    if (codeSessionValue != validateCode)
                    {
                        return Json(new { Success = false, ErrorMsg = "Please enter a valid validate code.", errorCount = errorCount });
                    }
                }
            }
            try
            {
                int siteID = Converter.ToInt(forms["site"], 0);
                UserBll bll = new UserBll();
                User targetUser = bll.GetUserByFilter(u => u.UserName == user.UserName);
                if (targetUser == null)
                {
                    return Json(new { Success = false, ErrorMsg = "User is not exists.", errorCount = errorCount, });
                }
                if (!targetUser.IsValid)
                {
                    return Json(new { Success = false, ErrorMsg = "Your account has been closed.", errorCount = errorCount });
                }
                bool isSite = false;
                foreach (var item in targetUser.SiteDepartmentUsers.ToList())
                {
                    if (item.SiteID == siteID)
                    {
                        isSite = true;
                        continue;
                    }
                }

                if (!isSite)
                {
                    return Json(new { Success = false, ErrorMsg = "Unable to log this user in the system! No site is defined for this user.", errorCount = errorCount });
                }


                string md5PWD = Insourcia.Common.Security.Cryptography.MD5(user.Password);

                if (md5PWD == targetUser.Password)
                {
                    Session.Remove("errorCount");
                    Session["UserID"] = targetUser.UserID;
                    Session["UserName"] = targetUser.UserName;
                    Session["SiteID"] = Converter.ToInt(forms["site"], 1);
                    Session["UserTypeID"] = targetUser.UserTypeID;
                    return Json(new { Success = true });
                }
                else
                {
                    //开始记录次数
                    errorCount++;
                    Session["errorCount"] = errorCount;
                    if (errorCount >= 5)
                    {
                        targetUser.IsValid = false;
                        if (bll.UpDateUser(targetUser))
                        {
                            return Json(new { Success = false, ErrorMsg = "Your account has been closed.", errorCount = errorCount });
                        }
                    }
                    return Json(new { Success = false, ErrorMsg = "Password mistake " + errorCount, errorCount = errorCount + " times,more than five times will lock account " });
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Signin", "Login", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message, errorCount = errorCount });
            }
        }

        /// <summary>
        /// 退出登陆
        /// </summary>
        /// <returns></returns>
        public ActionResult LoginOff()
        {
            Session.Clear();
            return RedirectToAction("Login", "Signin");
        }

        /// <summary>
        /// 获取所有站点
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public IEnumerable<SelectListItem> GetSiteItem()
        {
            SiteBll bll = new SiteBll();
            List<SelectListItem> seleteItem = new List<SelectListItem>();
            seleteItem.Add(new SelectListItem { Text = "Please choose the site", Value = "0" });
            IList<Site> siteItems = bll.GetAllSite();
            if (siteItems == null) return seleteItem;
            foreach (var item in siteItems)
            {
                seleteItem.Add(new SelectListItem { Text = item.SiteName, Value = item.SiteID.ToString() });
            }
            return seleteItem;
        }

        /// <summary>
        /// 通过用户名获取站点
        /// </summary>
        /// <param name="forms"></param>
        /// <returns></returns>
        public ActionResult GetUserDefaultSiteID(FormCollection forms)
        {
            try
            {
                string username = forms["username"].ToString();
                UserBll userBll = new UserBll();
                User user = userBll.GetUserByFilter(u => u.UserName == username);
                if (user == null) return Json(new { Success = false, ErrorMsg = "User is not exists." });
                int siteID = 0;
                if (user.DefaultSiteID.HasValue)
                {
                    siteID = user.DefaultSiteID.Value;
                }
                return Json(new { Success = true, Value = siteID.ToString() });
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Signin", "Login", LogMessageType.Error, ex);
                return Json(new { Success = false, ErrorMsg = ex.Message });
            }

        }

        /// <summary>
        /// 获取验证码的Action
        /// </summary>
        /// <returns></returns>
        public ActionResult GetValidateCode()
        {
            ValidateCode vCode = new ValidateCode();
            string code = vCode.CreateValidateCode(5);

            Session["ValidateCode"] = code;
            byte[] bytes = vCode.CreateValidateGraphic(code);
            return File(bytes, @"image/jpeg");
        }
    }
}
