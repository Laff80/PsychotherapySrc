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
    public class CategoryBll : BaseBll<Category>
    {
        private IRepository<Category> categoryContext;
        private PsychotherapyEntities entities;
        public CategoryBll()
        {
            entities = new PsychotherapyEntities();
            categoryContext = new Repository<Category>(entities);
            Context = categoryContext;
        }

        public IList<Category> GetAllCategories()
        {
            return categoryContext.FindAll();
        }

        public Category GetCategoryByID(int id)
        {
            return categoryContext.FindByKey(id, "CategoryID");
        }

        public bool Delete(int id)
        {
            Category category = GetCategoryByID(id);
            if(category==null) return false;
            categoryContext.Delete(category);
            return categoryContext.Save() > 0;
        }

        //public bool DeleteMulti(IList<int> ids)
        //{
              
        //}

        /// <summary>
        /// 获取文件分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<Category> GetPagedCategories(int pageIndex, int pageSize, Expression<Func<Category, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Category>();
            int index = pageIndex;
            int totalCount;
            IList<Category> list = categoryContext.FindOrderBy<DateTime>(filter, r => r.TimeCreated.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<Category>(index, pageSize, totalCount);
        }
    }

    public class CategoryBO : BOBase<CategoryBO>
    {
        public SelectList GetCategories()
        {
            CategoryBll categoryBll = new CategoryBll();
            IList<Category> categories = categoryBll.GetAllCategories();
            SelectList slcategories = new SelectList(categories, "CategoryID", "Name");
            return slcategories;
        }
    }
}
