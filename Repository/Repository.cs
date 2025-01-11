using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Objects;
using System.Data.Common;
using System.Data;
using System.Linq.Expressions;
using System.Collections.ObjectModel;
using LinqKit;
using Wade.Common;
namespace Insourcia.Repository
{
    public class Repository<E> : IRepository<E>, IDisposable where E : class
    {
        protected ObjectContext context;
        protected ObjectSet<E> objectSet;
        //private DbContext      
        public Repository(ObjectContext ct)
        {
            context = ct;
            objectSet = context.CreateObjectSet<E>();
        }

        #region IRepository<E> 成员

        #region 简单操作
        public DbTransaction BeginTransaction()
        {
            if (context.Connection.State != ConnectionState.Open)
            {
                context.Connection.Open();
            }

            return context.Connection.BeginTransaction();
        }

        public void Add(E entity)
        {
            objectSet.AddObject(entity);
        }

        public void Update(E entity)
        {
            EntityKey pKey = context.CreateEntityKey(objectSet.EntitySet.Name, entity);
            object oldObject;
            if (context.TryGetObjectByKey(pKey, out oldObject))
            {
                objectSet.ApplyCurrentValues(entity);
            }
        }

        /// <summary>
        /// 更新实体
        /// </summary>
        /// <param name="setExpression">修改的属性表达式</param>
        /// <param name="whereExpression">条件表达式</param>
        /// <returns></returns>
        public int Update(Expression<Func<E>> setExpression, Expression<Func<E, bool>> whereExpression)
        {
            return objectSet.Update(setExpression, whereExpression);

        }

        public void Attach(E entity)
        {
            objectSet.Attach(entity);
        }

        public void Delete(E entity)
        {
            objectSet.DeleteObject(entity);
        }

        public int Delete(Expression<Func<E, bool>> whereExpression)
        {
            return objectSet.Delete(whereExpression);
        }

        public int Save()
        {
            return context.SaveChanges();
        }

        public E SingleOrDefault(Expression<Func<E, bool>> where)
        {
            return objectSet.SingleOrDefault(where);
        }

        public E FirstOrDefault(Expression<Func<E, bool>> where)
        {
            return objectSet.FirstOrDefault(where);
        }

        public int GetCount()
        {
            return QueryAll().Count();
        }

        public int GetCount(Expression<Func<E, bool>> where)
        {
            return Query(where).Count();
        }


        public int ExecuteStoreCommand(string strSql, params object[] parameters)
        {
           return context.ExecuteStoreCommand(strSql, parameters);           
        }
        #endregion

        #region Query
        public IQueryable<E> QueryAll(string entitySetName)
        {
            return context.CreateObjectSet<E>(entitySetName);
        }

        public IQueryable<E> QueryAll()
        {
            return objectSet;
        }

        public IQueryable<E> Query(Expression<Func<E, bool>> where)
        {
            return objectSet.AsExpandable<E>().Where(where);
        }



        public IQueryable<E> QueryOrderBy<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr)
        {
            IQueryable<E> query = Query(where);
            return query.OrderBy(sortExpr);
        }

        public IQueryable<IGrouping<TKey, E>> QueryGroupBy<TKey>(Expression<Func<E, bool>> where, Expression<Func<E, TKey>> group)
        {
            IQueryable<E> query = Query(where);
            return query.GroupBy<E, TKey>(group);
        }


        public IQueryable<E> QueryOrderByDescending<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr)
        {
            return Query(where).OrderByDescending(sortExpr);
        }

        public IList<E> FindAll()
        {
            return QueryAll().ToList();
        }
        #endregion

        #region Find and return Ilist
        public IList<E> Find(Expression<Func<E, bool>> where)
        {
            if (where == null) throw new ArgumentNullException("where");
            return Query(where).ToList();
        }

        public IList<TResult> FindResult<TResult>(Expression<Func<E, bool>> where, Expression<Func<E, TResult>> selector)
        {
            return Query(where).Select(selector).ToList();
        }

        #region 2010年11月26日 10:32:58
        /*
       public IList<E> Find(Expression<Func<E, bool>> where, int skipNum, int takeNum)
       {
           if (where == null) throw new ArgumentNullException("where");
           return Query(where).Skip(skipNum).Take(takeNum).ToList();
       }

       public IList<E> Find(Expression<Func<E, bool>> where, int skipNum, int takeNum, out int totalItemCount)
       {
           if (where == null) throw new ArgumentNullException("where");
           IQueryable<E> query = Query(where);
           totalItemCount = query.Count();
           return query.Skip(skipNum).Take(takeNum).ToList();
       }
       public IList<E> Find(Expression<Func<E, bool>> where, ref int index, int takeCount, out int totalItemCount)
       {
           if (where == null) throw new ArgumentNullException("where");
           IQueryable<E> query = Query(where);
           totalItemCount = query.Count();
           int skipCount;
           PreparePagedParameter(takeCount, totalItemCount, ref index, out skipCount);
           //小于或只有一页时直接查询
           if (totalItemCount <= takeCount)
           {
               return query.ToList();
           }
           return query.Skip(skipCount).Take(takeCount).ToList();


       } */
        #endregion

        public IList<E> FindOrderBy<SKey>(System.Linq.Expressions.Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            return QueryOrderBy(where, sortExpr).ToList();
        }

        public IList<E> FindOrderBy<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr, int skipNum, int takeNum, out int totalItemCount)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            IQueryable<E> query = QueryOrderBy(where, sortExpr);
            totalItemCount = query.Count();
            return query.Skip(skipNum).Take(takeNum).ToList();
        }


        public IList<E> FindOrderByDescending<SKey>(System.Linq.Expressions.Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            return QueryOrderByDescending(where, sortExpr).ToList();
        }


        public IList<E> FindOrderByDescending<SKey>(Expression<Func<E, bool>> where, Expression<Func<E, SKey>> sortExpr, int skipNum, int takeNum, out int totalItemCount)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            IQueryable<E> query = QueryOrderByDescending(where, sortExpr);
            totalItemCount = query.Count();
            return query.Skip(skipNum).Take(takeNum).ToList();
        }

        public IList<E> FindOrderBy<SKey>(Expression<Func<E, bool>> where,
            Expression<Func<E, SKey>> sortExpr,
            ref int index,
            int takeCount,
            out int totalItemCount)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            IQueryable<E> query = QueryOrderBy(where, sortExpr);
            totalItemCount = query.Count();
            int skipCount;
            PreparePagedParameter(takeCount, totalItemCount, ref index, out skipCount);
            //小于或只有一页时直接查询
            if (totalItemCount <= takeCount)
            {
                return query.ToList();
            }
            return query.Skip(skipCount).Take(takeCount).ToList();
        }

        public IList<E> FindOrderByDescending<SKey>(Expression<Func<E, bool>> where,
            Expression<Func<E, SKey>> sortExpr,
            ref int index,
            int takeCount,
            out int totalItemCount)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            IQueryable<E> query = QueryOrderByDescending(where, sortExpr);
            totalItemCount = query.Count();
            int skipCount;
            PreparePagedParameter(takeCount, totalItemCount, ref index, out skipCount);
            //小于或只有一页时直接查询
            if (totalItemCount <= takeCount)
            {
                return query.ToList();
            }
            return query.Skip(skipCount).Take(takeCount).ToList();
        }

        public E FindByKey<TKey>(TKey key, string keyName)
        {
            var xParam = Expression.Parameter(typeof(E), typeof(E).Name);
            MemberExpression leftExpr = MemberExpression.Property(xParam, keyName);
            Expression rightExpr = Expression.Constant(key);
            BinaryExpression binaryExpr = MemberExpression.Equal(leftExpr, rightExpr);
            //Create Lambda Expression for the selection 
            Expression<Func<E, bool>> lambdaExpr = Expression.Lambda<Func<E, bool>>(binaryExpr,
            new ParameterExpression[] { xParam });
            //Searching ....
            return SingleOrDefault(lambdaExpr);
        } 
        #endregion

        #region Find,order and return new result

        /// <summary>
        /// 根据条件查询，并影射到新的对象
        /// </summary>
        /// <typeparam name="SKey">用于排序属性的数据类型</typeparam>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <returns></returns>
        public IList<TResult> FindOrderByResult<SKey, TResult>(Expression<Func<E, bool>> where,
            Expression<Func<E, SKey>> sortExpr,
            Expression<Func<E, TResult>> selector)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            if (selector == null) throw new ArgumentNullException("selector");
            return QueryOrderBy<SKey>(where, sortExpr).Select(selector).ToList();
        }

        /// <summary>
        /// 根据条件查询，并影射到新的对象
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
        public IList<TResult> FindOrderByResult<SKey, TResult>(Expression<Func<E, bool>> where,
             Expression<Func<E, SKey>> sortExpr,
             Expression<Func<E, TResult>> selector,
             int skipNum,
             int takeNum,
             out int totalItemCount)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            if (selector == null) throw new ArgumentNullException("selector");
            IQueryable<E> query = QueryOrderBy(where, sortExpr);
            totalItemCount = query.Count();
            return query.Skip(skipNum).Take(takeNum).Select(selector).ToList();
        }


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
        public IList<TResult> FindOrderByResult<SKey, TResult>(Expression<Func<E, bool>> where,
             Expression<Func<E, SKey>> sortExpr,
             Expression<Func<E, TResult>> selector,
            ref int index,
             int takeCount,
             out int totalItemCount)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            if (selector == null) throw new ArgumentNullException("selector");
            IQueryable<E> query = QueryOrderBy(where, sortExpr);
            totalItemCount = query.Count();
            int skipCount;
            PreparePagedParameter(takeCount, totalItemCount, ref index, out skipCount);
            //小于或只有一页时直接查询
            if (totalItemCount <= takeCount)
            {
                return query.Select(selector).ToList();
            }
            return query.Skip(skipCount).Take(takeCount).Select(selector).ToList();
        }

        /// <summary>
        /// 筛选数据,使用降序排序,并影射到新的对象
        /// </summary>
        /// <typeparam name="SKey">用于排序属性的数据类型</typeparam>
        /// <typeparam name="TResult">新对象数据类型</typeparam>
        /// <param name="where">条件表达式</param>
        /// <param name="sortExpr">排序表达式</param>
        /// <param name="selector">要影射到新对象的函数</param>
        /// <returns></returns>
       public  IList<TResult> FindOrderByDescendingResult<SKey, TResult>(Expression<Func<E, bool>> where,
            Expression<Func<E, SKey>> sortExpr,
            Expression<Func<E, TResult>> selector)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            if (selector == null) throw new ArgumentNullException("selector");
            return QueryOrderByDescending<SKey>(where, sortExpr).Select(selector).ToList();
        }

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
        public IList<TResult> FindOrderByDescendingResult<SKey, TResult>(Expression<Func<E, bool>> where,
              Expression<Func<E, SKey>> sortExpr,
              Expression<Func<E, TResult>> selector,
              int skipNum,
              int takeNum,
              out int totalItemCount)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            if (selector == null) throw new ArgumentNullException("selector");
            IQueryable<E> query = QueryOrderByDescending(where, sortExpr);
            totalItemCount = query.Count();
            return query.Skip(skipNum).Take(takeNum).Select(selector).ToList();
        }

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
        public IList<TResult> FindOrderByDescendingResult<SKey, TResult>(Expression<Func<E, bool>> where,
             Expression<Func<E, SKey>> sortExpr,
             Expression<Func<E, TResult>> selector,
            ref int index,
             int takeCount,
             out int totalItemCount)
        {
            if (where == null) throw new ArgumentNullException("where");
            if (sortExpr == null) throw new ArgumentNullException("sortExpr");
            if (selector == null) throw new ArgumentNullException("selector");
            IQueryable<E> query = QueryOrderByDescending(where, sortExpr);
            totalItemCount = query.Count();
            int skipCount;
            PreparePagedParameter(takeCount, totalItemCount, ref index, out skipCount);
            //小于或只有一页时直接查询
            if (totalItemCount <= takeCount)
            {
                return query.Select(selector).ToList();
            }
            return query.Skip(skipCount).Take(takeCount).Select(selector).ToList();
        }

        /// <summary>
        /// 准备分页参数
        /// </summary>
        /// <param name="takeCount"></param>
        /// <param name="totalItemCount"></param>
        /// <param name="index"></param>
        /// <param name="skipCount"></param>
        private void PreparePagedParameter(int takeCount, int totalItemCount, ref int index, out int skipCount)
        {
            if (index < 1)
            {
                index = 1;
            }
            if (takeCount < 1)
            {
                takeCount = 1;
            }

            int actualPageCount = 0;
            if (totalItemCount > 0)
            {
                actualPageCount = (int)Math.Ceiling(totalItemCount / (double)takeCount);
                if (index > actualPageCount)
                    index = actualPageCount;
            }
            skipCount = (index - 1) * takeCount;

        }
        #endregion

        #endregion


        #region IDisposable Members

        public void Dispose()
        {
            if (null != context)
            {
                context.Dispose();
            }
        }

        #endregion

    }
}
