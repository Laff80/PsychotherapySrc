using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.WebControls.MvcPaging;
using System.Web.Mvc;

namespace Insourcia.Psychotherapy.Bll
{

    public class ClusterBll : BaseBll<Cluster>
    {
        private IRepository<Cluster> clusterContext;
        private PsychotherapyEntities entities;
        public ClusterBll()
        {
            entities = new PsychotherapyEntities();
            clusterContext = new Repository<Cluster>(entities);
            Context = clusterContext;//给父类的Context赋值，这是必须的。
        }
        public IList<Cluster> GetClusterList(Expression<Func<Cluster, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Cluster>();


            IList<Cluster> list = clusterContext.Find(filter);
            return list;
        }
        /// <summary>
        /// 获取指定ID的信息
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Cluster GetClusterByID(int id)
        {
            return clusterContext.FindByKey(id, "ClusterID");
        }

        public IList<Cluster> GetAllClusters()
        {
            return clusterContext.FindAll();
        }

        /// <summary>
        /// 获取文件分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<Cluster> GetPagedClusters(int pageIndex, int pageSize, Expression<Func<Cluster, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Cluster>();
            int index = pageIndex;
            int totalCount;
            IList<Cluster> list = clusterContext.FindOrderBy<DateTime>(filter, r => r.CreateTime.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<Cluster>(index, pageSize, totalCount);
        }
    }

    public class ClusterBO : BOBase<ClusterBO>
    {
        /// <summary>
        /// Cluster DropDownList
        /// </summary>
        /// <param name="id">PatientID</param>
        /// <returns></returns>
        public SelectList GetClusterDropDownListByID(int id)
        {
            ClusterBll clusterBll = new ClusterBll();
            IList<Cluster> clusterlist = clusterBll.GetClusterList(c => c.ParientID == id);
            SelectList clusterSelect = new SelectList(clusterlist, "ClusterID", "Title");
            return clusterSelect;
        }
    }
}
