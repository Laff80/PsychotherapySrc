using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.Psychotherapy.Model;
using Insourcia.WebControls.MvcPaging;
using Psychotherapy.Utility;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.Common.Web;
namespace Insourcia.Psychotherapy.Controllers
{
    /// <summary>
    /// 后台 Forms Controller
    /// </summary>
    public class FormsManageController : SysBaseController
    {

        public ActionResult Forms(int? id)
        {
            try
            {
                FormBll formbll = new FormBll();
                Expression<Func<Form,bool>> filter = PredicateBuilder.True<Form>();
                IPagedList<Form> list = formbll.GetFormPageLists(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FormsManage", "Forms", ex);
                return PartialView("Error");
            } 
        }

        [HttpPost]
        public ActionResult GetForms(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                FormBll formbll = new FormBll();
                Expression<Func<Form, bool>> filter = PredicateBuilder.True<Form>();
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.FormName.Contains(strKeyword));
                }
                IPagedList<Form> forms = formbll.GetFormPageLists(id ?? 1, 12, filter);
                return PartialView("Ucforms", forms);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FormsManage", "GetForms", ex);
                return PartialView("Error");
            }
        }

        public ActionResult NewForm()
        {
            try
            {
                ViewData["slCategories"] = CategoryBO.Instance.GetCategories();
                return View();
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FormsManage", "NewForm", ex);
                throw;
            }
            
        }

        [HttpPost]
        public ActionResult NewForm(Form form)
        {
            try
            {
                FormBll bll = new FormBll();
                form.TemplatePath = form.FormName.Replace(" ", "");
                if (bll.AddForm(form)) return RedirectToAction("Forms");

                ModelState.AddModelError("ErrorMsg", "Save Form failure");
                ViewData["slCategories"] = CategoryBO.Instance.GetCategories();
                return View(form);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FormsManage", "NewForm", ex);
                return PartialView("error");
            }
        }

        public ActionResult EditForm(int id)
        {
            try
            {
                ViewData["slCategories"] = CategoryBO.Instance.GetCategories();
                FormBll formBll = new FormBll();
                Form form = formBll.GetFormById(id);
                return View(form);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FormsManage", "EditForm", ex);
                throw;
            }
        }

        [HttpPost]
        public ActionResult EditForm(Form form)
        {
            try
            {
                FormBll bll = new FormBll();
                if (bll.UpdateForm(form)) return RedirectToAction("Forms");

                ModelState.AddModelError("ErrorMsg", "Save Form failure");
                ViewData["slCategories"] = CategoryBO.Instance.GetCategories();
                return View(form);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FormsManage", "EditForm", ex);
                throw;
            }
        }
    }
}
