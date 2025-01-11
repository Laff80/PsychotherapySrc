using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using System.Linq.Expressions;
using Insourcia.WebControls.MvcPaging;
using LinqKit;


namespace Insourcia.Psychotherapy.Bll
{
    public class SiteBll : BaseBll<SiteBll>
    {
        private IRepository<Site> siteContext;
        private PsychotherapyEntities entities;

        public SiteBll()
        {
            entities = new PsychotherapyEntities();
            siteContext = new Repository<Site>(entities);
        }

        /// <summary>
        /// 添加一个站点
        /// </summary>
        /// <param name="site"></param>
        /// <returns></returns>
        public bool AddSite(Site site)
        {
            siteContext.Add(site);
            return siteContext.Save() > 0;
        }

        /// <summary>
        /// 更新一个站点
        /// </summary>
        /// <param name="site"></param>
        /// <returns></returns>
        public bool UpdateSite(Site site)
        {
            siteContext.Update(site);
            return siteContext.Save() > 0;
        }

        /// <summary>
        /// 删除一个站点
        /// </summary>
        /// <param name="site"></param>
        /// <returns></returns>
        public bool DeleteSite(int id)
        {
            Site site = GetSiteByID(id);
            if (site == null) return false;
            siteContext.Delete(site);
            return siteContext.Save() > 0;
        }

        /// <summary>
        /// 根据id查找站点
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Site GetSiteByID(int id)
        {
            return siteContext.FindByKey(id, "SiteID");
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="filter"></param>
        /// <returns></returns>
        public Site GetSiteByFilter(Expression<Func<Site, bool>> filter)
        {
            return siteContext.SingleOrDefault(filter);
        }

        /// <summary>
        /// Get all site
        /// </summary>
        /// <returns></returns>
        public IList<Site> GetAllSite()
        {
            return siteContext.FindAll();
        }

        ///<summary>
        ///获取站点分页列表
        ///</summary>
        ///<param name="pageIndex">页索引</param>
        ///<param name="pageSize">页大小</param>
        ///<param name="filter">赛选条件</param>
        public IPagedList<Site> GetPageSizeList(int pageIndex, int pageSize, Expression<Func<Site, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Site>();
            int index = pageIndex;
            int totalCount;
            IList<Site> list = siteContext.FindOrderBy(filter, r => r.TimeCreated.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<Site>(index, pageSize, totalCount);
        }
    }

    public class SiteBO : BOBase<SiteBO>
    {
        
    }
}
