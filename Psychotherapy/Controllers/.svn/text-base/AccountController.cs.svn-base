using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Psychotherapy.Models;
using Psychotherapy.Utility;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using Insourcia.Common.Web;
using Insourcia.Common;
using Insourcia.Psychotherapy.Utility.Log;
namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    [HandleError]
    public class AccountController : BaseController
    {

        public ActionResult Settings()
        {
            try
            {
                SiteBll siteBll=new SiteBll();
                IList<Site> siteItem = siteBll.GetAllSite();
                UserBll userBll = new UserBll();
                User user = userBll.GetUserByID(UserID);
                ViewData["siteItem"] = new SelectList(siteItem, "SiteID", "SiteName", user == null ? "" : user.DefaultSiteID.ToString());
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Account", "Settings", ex);
                ModelState.AddModelError("ErrorMsg", ex.Message);
            }
            return View();
        }

        [HttpPost]
        public ActionResult doSettings(FormCollection forms)
        {
            try
            {
                string strPassword = HttpRequestUtils.GetString("password", string.Empty);
                string strNewPassword = HttpRequestUtils.GetString("newpassword", string.Empty);
                int siteID = Converter.ToInt(forms["site"], 0);

                UserBll userBll = new UserBll();
                User user = userBll.GetUserByID(UserID);
                if (!string.IsNullOrWhiteSpace(strPassword) && !string.IsNullOrWhiteSpace(strNewPassword))
                {
                    
                    string md5PWD = Insourcia.Common.Security.Cryptography.MD5(strPassword);
                    string md5NewPWD = Insourcia.Common.Security.Cryptography.MD5(strNewPassword);
                    if (md5NewPWD == md5PWD) return JsonModel.CreateJsonResult(false, "Please re-enter.");//新密码与当前密码相同
                    if (user.Password != md5PWD) return JsonModel.CreateJsonResult(false, "The old password is incorrect, please enter again.");
                    user.Password = md5NewPWD;
                    if (userBll.UpDateUser(user))
                    {
                        return JsonModel.CreateJsonResult(true, "The password has been successfully reset.");
                    }
                    return JsonModel.CreateJsonResult(false, "The Password reset failure.");
                }
                if (siteID != 0)
                {
                    if (user.DefaultSiteID == siteID) JsonModel.CreateJsonResult(false, "The Default Site has been successfully reset.");
                    user.DefaultSiteID = siteID;
                    if (userBll.UpDateUser(user))
                    {
                        return JsonModel.CreateJsonResult(true, "The Default Site has been successfully reset.");
                    }
                    return JsonModel.CreateJsonResult(false, "The Default Site reset failure.");
                }
                return JsonModel.CreateJsonResult(false, "Please input reset content.");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Account", "doSettings", ex);
                return JsonModel.CreateJsonResult(false, ex.Message);
            }
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

        //public IFormsAuthenticationService FormsService { get; set; }
        //public IMembershipService MembershipService { get; set; }

        //protected override void Initialize(RequestContext requestContext)
        //{
        //    if (FormsService == null) { FormsService = new FormsAuthenticationService(); }
        //    if (MembershipService == null) { MembershipService = new AccountMembershipService(); }

        //    base.Initialize(requestContext);
        //}

        //// **************************************
        //// URL: /Account/LogOn
        //// **************************************

        //public ActionResult LogOn()
        //{
        //    return View();
        //}

        //[HttpPost]
        //public ActionResult LogOn(LogOnModel model, string returnUrl)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        if (MembershipService.ValidateUser(model.UserName, model.Password))
        //        {
        //            FormsService.SignIn(model.UserName, model.RememberMe);
        //            if (!String.IsNullOrEmpty(returnUrl))
        //            {
        //                return Redirect(returnUrl);
        //            }
        //            else
        //            {
        //                return RedirectToAction("Index", "Home");
        //            }
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("", "提供的用户名或密码不正确。");
        //        }
        //    }

        //    // 如果我们进行到这一步时某个地方出错，则重新显示表单
        //    return View(model);
        //}

        //// **************************************
        //// URL: /Account/LogOff
        //// **************************************

        //public ActionResult LogOff()
        //{
        //    FormsService.SignOut();

        //    return RedirectToAction("Index", "Home");
        //}

        //// **************************************
        //// URL: /Account/Register
        //// **************************************

        //public ActionResult Register()
        //{
        //    ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
        //    return View();
        //}

        //[HttpPost]
        //public ActionResult Register(RegisterModel model)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        // 尝试注册用户
        //        MembershipCreateStatus createStatus = MembershipService.CreateUser(model.UserName, model.Password, model.Email);

        //        if (createStatus == MembershipCreateStatus.Success)
        //        {
        //            FormsService.SignIn(model.UserName, false /* createPersistentCookie */);
        //            return RedirectToAction("Index", "Home");
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("", AccountValidation.ErrorCodeToString(createStatus));
        //        }
        //    }

        //    // 如果我们进行到这一步时某个地方出错，则重新显示表单
        //    ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
        //    return View(model);
        //}

        //// **************************************
        //// URL: /Account/ChangePassword
        //// **************************************

        //[Authorize]
        //public ActionResult ChangePassword()
        //{
        //    ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
        //    return View();
        //}

        //[Authorize]
        //[HttpPost]
        //public ActionResult ChangePassword(ChangePasswordModel model)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        if (MembershipService.ChangePassword(User.Identity.Name, model.OldPassword, model.NewPassword))
        //        {
        //            return RedirectToAction("ChangePasswordSuccess");
        //        }
        //        else
        //        {
        //            ModelState.AddModelError("", "当前密码不正确或新密码无效。");
        //        }
        //    }

        //    // 如果我们进行到这一步时某个地方出错，则重新显示表单
        //    ViewData["PasswordLength"] = MembershipService.MinPasswordLength;
        //    return View(model);
        //}

        //// **************************************
        //// URL: /Account/ChangePasswordSuccess
        //// **************************************

        //public ActionResult ChangePasswordSuccess()
        //{
        //    return View();
        //}

    }
}
