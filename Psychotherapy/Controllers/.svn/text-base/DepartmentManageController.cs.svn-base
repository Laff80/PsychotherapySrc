using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Common;
using Insourcia.WebControls.MvcPaging;
using Psychotherapy.Utility;
using Insourcia.Psychotherapy.Bll;
using System.Linq.Expressions;
using Insourcia.Psychotherapy.Model;
using LinqKit;
using Insourcia.Common.Web;
using Insourcia.Psychotherapy.Utility.Log;

namespace Insourcia.Psychotherapy.Controllers
{

    public class DepartmentManageController : Controller
    {

        public ActionResult Departments(int? id)
        {
            try
            {
                DepartmentBll bll = new DepartmentBll();
                Expression<Func<Department, bool>> filter = PredicateBuilder.True<Department>();
                IPagedList<Department> list = bll.GetPageList(id ?? 1, 12, filter);
                return View(list);
            }

            catch (Exception ex)
            {
                LogHelper.ErrorToDb("DepartmentManage", "Departments", ex);
                return PartialView("error");
            }
        }

        public ActionResult GetDepartments(int ? id,FormCollection forms)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                DepartmentBll bll = new DepartmentBll();
                Expression<Func<Department, bool>> filter = PredicateBuilder.True<Department>();
                if (!String.IsNullOrWhiteSpace(strKeyword))
                {
                    DateTime time = Converter.ToDateTime(strKeyword, DateTime.MinValue);
                    filter = p=>(p.DepartmentName.Contains(strKeyword) || p.Description.Contains(strKeyword) ||(p.TimeCreated.Value.CompareTo(time)==0));
                }
                IPagedList<Department> list = bll.GetPageList(id ?? 1, 12, filter);
                return View("UcDepartments", list);

            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("DepartmentManage", "GetDepartments", ex);
                return PartialView("error");
            }
        }

        [HttpPost]
        public IEnumerable<SelectListItem> GetUserNames()
        {
            UserBll bll = new UserBll();
            List<SelectListItem> selectItem = new List<SelectListItem>();
            IList<User> Users = bll.GetAllUsers();
            if (Users == null) return selectItem;
            foreach (var item in Users)
            {
                selectItem.Add(new SelectListItem { Text = item.UserName, Value = item.UserID.ToString() });
            }
            return selectItem;
        }
        
        public ActionResult EditDepartment(int id)
        {
            try
            {
                DepartmentBll bll = new DepartmentBll();
                Department department = bll.GetDepartmentById(id);
                ViewData["UserNames"] = UserBO.Instance.GetUsers();
                if (department == null)
                    return PartialView("error");
                return View(department);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("DepartmentManage", "EditDepartment", ex);
                return PartialView("error");
            }
        }

        [HttpPost]
        public ActionResult EditDepartment(Department department)
        {
            try
            {
                DepartmentBll bll = new DepartmentBll();
                department.LastModified = DateTime.Now;
                department.LastModifiedBy = 0;
                if (bll.UpdateDepartment(department))
                {
                    return RedirectToAction("Departments");
                }
                else
                {
                    ViewData["UserNames"] = GetUserNames();
                    ModelState.AddModelError("ErrorMsg", "Department Edit fail");
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("DepartmentManage", "EditDepartment", ex);
                ModelState.AddModelError("ErrorMsg", ex.Message);
            }
            return View(department);
        }

        public ActionResult NewDepartment()
        {
            ViewData["UserNames"] = GetUserNames();
            return View();
        }

        [HttpPost]
        public ActionResult NewDepartment(Department department)
        {
            try
            {
                DepartmentBll bll = new DepartmentBll();
                department.IsValid = true;
                department.LastModified = DateTime.Now;
                department.TimeCreated = DateTime.Now;
                if (bll.AddDepartment(department))
                {
                    return RedirectToAction("Create");
                }
                else
                {
                    ModelState.AddModelError("ErrorMsg", "add Department is fail");
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Department", "Create", ex);
                return PartialView("Error");
            }

            return View(department);
        }
       
    }
}
