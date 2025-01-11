using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Repository;
using System.Linq.Expressions;

namespace Insourcia.Psychotherapy.Bll
{
    public abstract class BaseBll<E>
    {
       protected IRepository<E> Context;
       
       public BaseBll() { }
       public BaseBll(IRepository<E> context)
       {
           Context = context;
            
       }

       

       /// <summary>
       /// 添加一个实体
       /// </summary>
       /// <param name="model"></param>
       /// <returns></returns>
       public virtual bool Add(E model)
       {
           Context.Add(model);
           return Context.Save() > 0;
       }

       /// <summary>
       /// 添加一个实体，是否立即保存,如果不立即保存，返回值为true
       /// </summary>
       /// <param name="model">实体</param>
       /// <param name="isSave">是否立即保存</param>
       /// <returns></returns>
       public virtual bool Add(E model, bool isSave)
       {
           Context.Add(model);
           if (isSave)
               return Context.Save() > 0;
           return true;
       }
       
       /// <summary>
       /// 更新实体
       /// </summary>
       /// <param name="model"></param>
       /// <returns></returns>
       public virtual bool Update(E model)
       {
           Context.Update(model);
           return Context.Save() > 0;
       }

       /// <summary>
       /// 删除实体
       /// </summary>
       /// <param name="model"></param>
       /// <returns></returns>
       public virtual bool Delete(E model)
       {
           Context.Delete(model);
           return Context.Save() > 0;
       }

       /// <summary>
       /// 通过主键获取实体
       /// </summary>
       /// <typeparam name="TKey"></typeparam>
       /// <param name="keyValue"></param>
       /// <param name="keyName"></param>
       /// <returns></returns>
       public virtual E GetModelByKey<TKey>(TKey keyValue, string keyName)
       {
           return Context.FindByKey<TKey>(keyValue, keyName);
       }
       /// <summary>
       /// 根据条件获取实体
       /// </summary>
       /// <param name="predicate"></param>
       /// <returns></returns>
       public virtual E GetModel(Expression<Func<E, bool>> predicate)
       {
           return Context.FirstOrDefault(predicate);
       }

    }
}
