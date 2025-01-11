using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using System.Data.Objects;
using System.Collections.ObjectModel;
using System.Linq.Expressions;
namespace Insourcia.Repository
{
    /// <summary>
    /// Repository Interface defines the base
    /// functionality required by all Repositories.
    /// </summary>
    /// <typeparam name="T">
    /// The entity type that requires a Repository.
    /// </typeparam>
    public interface IRepository<E>
    {
        /// <summary>
        /// 开始一个事务
        /// </summary>
        /// <returns></returns>
        DbTransaction BeginTransaction();
        /// <summary>
        /// 添加一个实体
        /// </summary>
        /// <param name="entity"></param>
        void Add(E entity);
        /// <summary>
        /// 附加实体到上下文
        /// </summary>
        /// <param name="entity"></param>
        void Attach(E entity);

        /// <summary>
        /// 更新实体，此方法将更新所有实体的属性值
        /// </summary>
        /// <param name="entity"></param>
        void Update(E entity);

        /// <summary>
        /// 更新实体
        /// </summary>
        /// <param name="setExpression">修改的属性表达式</param>
        /// <param name="whereExpression">条件表达式</param>
        /// <returns></returns>
        int Update(Expression<Func<E>> setExpression,Expression<Func<E,bool>> whereExpression);

        /// <summary>
        /// 删除实体
        /// </summary>
        /// <param name="entity"></param>
        void Delete(E entity);

        /// <summary>
        /// 删除实体
        /// </summary>
        /// <param name="whereExpression">条件表达式</param>
        /// <returns></returns>
        int Delete(Expression<Func<E, bool>> whereExpression);
        /// <summary>
        /// 保存所作的更改
        /// </summary>
        /// <returns></returns>
        int Save();

        #region IQueryable
        /// <summary>
        /// 获取全部
        /// </summary>
        /// <param name="entitySetName"></param>
        /// <returns></returns>
        IQueryable<E> QueryAll(string entitySetName);

        /// <summary>
        /// 获取全部
        /// </summary>
        /// <returns></returns>
        IQueryable<E> QueryAll();
        /// <summary>
        /// 通过条件查询
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        IQueryable<E> Query(Expression<Func<E, bool>> where);        

        /// <summary>
        /// 筛选符合条件的实体集，并按键升序排序
        /// </summary>
        /// <typeparam name="SKey">排序属性的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <returns></returns>
        IQueryable<E> QueryOrderBy<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr);

        
        /// <summary>
        /// 筛选符合条件的实体集，并按键降序排序
        /// </summary>
        /// <typeparam name="SKey">排序属性的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <returns></returns>
        IQueryable<E> QueryOrderByDescending<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr);

        /// <summary>
        /// 分组查询
        /// </summary>
        /// <typeparam name="TKey">分组的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="group">分组表达式</param>
        /// <returns></returns>
        IQueryable<IGrouping<TKey, E>> QueryGroupBy<TKey>(Expression<Func<E, bool>> where, Expression<Func<E, TKey>> group);
        #endregion


        #region IList        
        /// <summary>
        /// 获取所有数据
        /// </summary>
        /// <returns></returns>
        IList<E> FindAll();

        /// <summary>
        /// 根据条件表达式筛选数据
        /// </summary>
        /// <param name="where">条件表达式</param>
        /// <returns></returns>
        IList<E> Find(Expression<Func<E, bool>> where);

        /// <summary>
        /// 根据条件查询，并影射到新的对象
        /// </summary>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <returns></returns>
        IList<TResult> FindResult<TResult>(Expression<Func<E, bool>> where, Expression<Func<E, TResult>> selector);

        #region 2010年11月26日 10:31:47
        ///// <summary>
        ///// 筛选符合条件的实体集，并按键升序排序
        ///// </summary>
        ///// <typeparam name="SKey">排序属性的数据类型</typeparam>
        ///// <param name="where">条件表达式</param>        
        ///// <param name="skipNum">跳过多少条记录数</param>
        ///// <param name="takeNum">取出多少</param>
        ///// <param name="totalItemCount">符合条件表达式的总数</param>
        ///// <returns></returns>
        //IList<E> Find(Expression<Func<E, bool>> where, int skipNum, int takeNum);

        ///// <summary>
        ///// 筛选记录，使用跳过多少条记录然后取出多少条
        ///// </summary>
        ///// <param name="where">条件表达式</param>
        ///// <param name="skipNum">跳过多少条记录数</param>
        ///// <param name="takeNum">取出多少</param>
        ///// <param name="totalItemCount">符合条件表达式的总数</param>
        ///// <returns></returns>
        //IList<E> Find(Expression<Func<E, bool>> where, int skipNum, int takeNum, out int totalItemCount);

        ///// <summary>
        ///// 用于分页读取数据，如果页索引值大于总页数值，则页索引被设置为当前最大页数，
        ///// 如果页索引小于1，则页索引被设置为1
        ///// </summary>
        ///// <param name="where">条件表达式</param>
        ///// <param name="index">页索引</param>
        ///// <param name="takeCount">页大小</param>
        ///// <param name="totalItemCount">记录总数</param>
        ///// <returns></returns>
        //IList<E> Find(Expression<Func<E, bool>> where, ref int index, int takeCount, out int totalItemCount); 
        #endregion

        /// <summary>
        /// 筛选数据并使用升序排序
        /// </summary>
        /// <typeparam name="SKey">排序字段的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达</param>
        /// <returns></returns>
        IList<E> FindOrderBy<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr);

        /// <summary>
        /// 筛选记录并升序排序，使用跳过多少条记录然后取出多少条
        /// </summary>
        /// <typeparam name="SKey">排序属性的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="skipNum">跳过多少条记录数</param>
        /// <param name="takeNum">取出多少</param>
        /// <param name="totalItemCount">符合条件表达式的总数</param>
        /// <returns></returns>
        IList<E> FindOrderBy<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr, int skipNum, int takeNum, out int totalItemCount);
               

        /// <summary>
        /// 用于分页读取数据，并使用升序排序。如果页索引值大于总页数值，则页索引被设置为当前最大页数，
        /// 如果页索引小于1，则页索引被设置为1
        /// </summary>
        /// <typeparam name="SKey">排序属性的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="where">条件表达式</param>
        /// <param name="index">页索引</param>
        /// <param name="takeCount">页大小</param>
        /// <param name="totalItemCount">记录总数</param>
        /// <returns></returns>
        IList<E> FindOrderBy<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr, ref int index, int takeCount, out int totalItemCount);

       
        /// <summary>
        /// 筛选数据并使用降序排序
        /// </summary>
        /// <typeparam name="SKey">排序字段的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达</param>
        /// <returns></returns>
        IList<E> FindOrderByDescending<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr);
        

        /// <summary>
        /// 筛选记录并降序排序，使用跳过多少条记录然后取出多少条
        /// </summary>
        /// <typeparam name="SKey">排序属性的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="skipNum">跳过多少条记录数</param>
        /// <param name="takeNum">取出多少</param>        
        /// <param name="totalItemCount">符合条件表达式的总数</param>
        /// <returns></returns>
        IList<E> FindOrderByDescending<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr,
            int skipNum, int takeNum, out int totalItemCount);

        /// <summary>
        /// 筛选记录并降序排序，并使用降序排序。如果页索引值大于总页数值，则页索引被设置为当前最大页数，
        /// 如果页索引小于1，则页索引被设置为1
        /// </summary>
        /// <typeparam name="SKey">排序属性的数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="where">条件表达式</param>
        /// <param name="index">页索引</param>
        /// <param name="takeCount">页大小</param>
        /// <param name="totalItemCount">记录总数</param>
        /// <returns></returns>
        IList<E> FindOrderByDescending<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr,
           ref int index, int takeCount, out int totalItemCount);

        /// <summary>
        /// 根据条件查询，并影射到新的对象
        /// </summary>
        /// <typeparam name="SKey">用于排序属性的数据类型</typeparam>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <returns></returns>
        IList<TResult> FindOrderByResult<SKey, TResult>(Expression<Func<E, bool>> where, 
            Expression<Func<E, SKey>> sortExpr, 
            Expression<Func<E, TResult>> selector);

        /// <summary>
        /// 筛选数据，使用升序排序并影射到新的对象
        /// </summary>
        /// <typeparam name="SKey">用于排序属性的数据类型</typeparam>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <param name="skipNum">跳过多少条记录数</param>
        /// <param name="takeNum">取出多少</param>
        /// <param name="totalItemCount">符合条件表达式的总数</param>
        /// <returns></returns>
        IList<TResult> FindOrderByResult<SKey, TResult>(Expression<Func<E, bool>> where,
            Expression<Func<E, SKey>> sortExpr,
            Expression<Func<E, TResult>> selector,
            int skipNum,
            int takeNum,
            out int totalItemCount);

        /// <summary>
        ///用于分页读取数据，并使用升序排序。如果页索引值大于总页数值，则页索引被设置为当前最大页数，
        /// 如果页索引小于1，则页索引被设置为1,并影射到新的对象
        /// </summary>
        /// <typeparam name="SKey">用于排序属性的数据类型</typeparam>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <param name="index">页索引</param>
        /// <param name="takeCount">页大小</param>
        /// <param name="totalItemCount">记录总数</param>
        /// <returns></returns>
        IList<TResult> FindOrderByResult<SKey, TResult>(Expression<Func<E, bool>> where,
            Expression<Func<E, SKey>> sortExpr,
            Expression<Func<E, TResult>> selector,
           ref int index,
            int takeCount,
            out int totalItemCount);

        /// <summary>
        /// 筛选数据,使用降序排序,并影射到新的对象
        /// </summary>
        /// <typeparam name="SKey">用于排序属性的数据类型</typeparam>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <returns></returns>
        IList<TResult> FindOrderByDescendingResult<SKey, TResult>(Expression<Func<E, bool>> where, 
            Expression<Func<E, SKey>> sortExpr, 
            Expression<Func<E, TResult>> selector);

        /// <summary>
        /// 筛选数据,使用降序排序，并影射到新的对象
        /// </summary>
        /// <typeparam name="SKey">用于排序属性的数据类型</typeparam>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <param name="skipNum">跳过多少条记录数</param>
        /// <param name="takeNum">取出多少</param>
        /// <param name="totalItemCount">符合条件表达式的总数</param>
        /// <returns></returns>
        IList<TResult> FindOrderByDescendingResult<SKey, TResult>(Expression<Func<E, bool>> where,
            Expression<Func<E, SKey>> sortExpr,
            Expression<Func<E, TResult>> selector,
            int skipNum,
            int takeNum,
            out int totalItemCount);

        /// <summary>
        ///用于分页读取数据，使用降序排序。如果页索引值大于总页数值，则页索引被设置为当前最大页数，
        /// 如果页索引小于1，则页索引被设置为1,并影射到新的对象
        /// </summary>
        /// <typeparam name="SKey">用于排序属性的数据类型</typeparam>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <param name="index">页索引</param>
        /// <param name="takeCount">页大小</param>
        /// <param name="totalItemCount">记录总数</param>
        /// <returns></returns>
        IList<TResult> FindOrderByDescendingResult<SKey, TResult>(Expression<Func<E, bool>> where,
            Expression<Func<E, SKey>> sortExpr,
            Expression<Func<E, TResult>> selector,
           ref int index,
            int takeCount,
            out int totalItemCount);

        #endregion



        /// <summary>
        /// 通过主键获取单个实体
        /// </summary>
        /// <typeparam name="TKey">主键的数据类型</typeparam>
        /// <param name="keyValue">主键值</param>
        /// <param name="keyName">主键名称</param>
        /// <returns>
        /// 类型为 E 的实体
        /// </returns>
        E FindByKey<TKey>(TKey keyValue, string keyName);

        /// <summary>
        /// 根据条件获取单个实体
        /// </summary>
        /// <param name="where">条件表达式</param>
        /// <returns>
        /// 类型为 E 的实体
        /// </returns>
        E SingleOrDefault(Expression<Func<E, bool>> where);

        /// <summary>
        /// 获取符合条件序列的首个实体
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        E FirstOrDefault(Expression<Func<E,bool>> where);
        /// <summary>
        /// 获取总数
        /// </summary>
        /// <returns></returns>
        int GetCount();

        /// <summary>
        /// 获取符合条件的记录数
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        int GetCount(Expression<Func<E, bool>> where);

        /// <summary>
        /// 直接执行语句
        /// </summary>
        /// <param name="strSql"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
        int ExecuteStoreCommand(string strSql, params object[] parameters);
    }
}
