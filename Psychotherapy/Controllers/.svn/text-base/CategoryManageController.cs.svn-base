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
using Insourcia.Common.Web;
using Insourcia.Psychotherapy.Utility.Log;
using Psychotherapy.Utility;
using Insourcia.Psychotherapy.Models;

namespace Insourcia.Psychotherapy.Controllers
{
    public class CategoryManageController : SysBaseController
    {

        public ActionResult Categories(int? id)
        {
            try
            {
                CategoryBll categoryBll = new CategoryBll();
                Expression<Func<Category, bool>> filter = PredicateBuilder.True<Category>();
                IPagedList<Category> categories = categoryBll.GetPagedCategories(id ?? 1, 12, filter);
                return View(categories);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Category", "Categories", ex);
                return PartialView("Error");
            }
            
        }

        [HttpPost]
        public ActionResult GetCategories(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
          
            try
            {
                CategoryBll categoryBll = new CategoryBll();
                Expression<Func<Category, bool>> filter = PredicateBuilder.True<Category>();
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.Name.Contains(strKeyword));
                }
                IPagedList<Category> categories = categoryBll.GetPagedCategories(id ?? 1, 12, filter);
                return PartialView("UcCategories", categories);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Category", "GetCategories", ex);
                return PartialView("Error");
            }
        }

        public ActionResult NewCategory()
        {
            return View();
        }

        [HttpPost]
        public ActionResult NewCategory(Category category)
        {
            try
            {
                CategoryBll bll = new CategoryBll();
                category.TimeCreated = DateTime.Now;
                category.ParentCategoryID = 0;
                category.OwnedBy = UserID;
                category.LastModifiedBy = UserID;
                category.LastModified = DateTime.Now;
                category.IsValid = true;
                if (bll.Add(category)) return RedirectToAction("Categories");
                ModelState.AddModelError("ErrorMsg", "Category save failed!");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("ErrorMsg", ex.Message);
                LogHelper.ErrorToDb("Category", "NewCategory", ex);
            }
            return View(category);
        }

        public ActionResult EditCategory(int id)
        {
            try
            {
                CategoryBll bll = new CategoryBll();
                Category category = bll.GetCategoryByID(id);
                if (category == null) return PartialView("");
                return View(category);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Category", "EditCategory", ex);
                throw;
            }
        }

        [HttpPost]
        public ActionResult EditCategory(Category category)
        {
            try
            {
                CategoryBll bll = new CategoryBll();
                Category targetCategory = bll.GetCategoryByID(category.CategoryID);
                targetCategory.Name = category.Name;
                targetCategory.Description = category.Description;
                targetCategory.LastModified = DateTime.Now;
                targetCategory.LastModifiedBy = UserID;
                if (bll.Update(targetCategory)) 
                    return RedirectToAction("Categories");
                ModelState.AddModelError("ErrorMsg", "Category save failed!");
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("ErrorMsg", ex.Message);
                LogHelper.ErrorToDb("Category", "EditCategory", ex);
            }
            return View(category);
        }

        public ActionResult SettingForm(int id)
        {
            try
            {
                CategoryBll categoryBll = new CategoryBll();
                Category category = categoryBll.GetCategoryByID(id);
                FormBll formBll = new FormBll();
                IList<Form> allforms = formBll.GetAllForms();
                IList<Form> slforms = category.Forms.ToList();
                //把所有的和已选的做对比，排除已选的
                var result = (from af in allforms select new { af.FormID, af.FormName }).Except(from sf in slforms select new { sf.FormID ,sf.FormName}).ToList();
                List<FormsModel> forms = new List<FormsModel>();
                foreach (var item in result)
                {
                    forms.Add(new FormsModel { FormID = item.FormID, FormName = item.FormName });
                }

                ViewData["forms"] = forms;
                ViewData["slforms"] = category.Forms != null ? slforms : null;
                if (category == null) return PartialView("");
                return View(category);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Category", "EditCategory", ex);
                throw;
            }
        }


        [HttpPost]
        public ActionResult SettingForm(FormCollection forms, Category category)
        {
            try
            {
                

            }
            catch (Exception)
            {
                
                throw;
            }
            return View();
        }
    }
}
