using System;
using System.Linq;
using System.Linq.Expressions;
using System.Collections.Generic;

namespace LinqKit
{
	/// <summary>
	/// See http://www.albahari.com/expressions for information and examples.
	/// </summary>
	public static class PredicateBuilder
	{
		public static Expression<Func<T, bool>> True<T> () { return f => true; }
		public static Expression<Func<T, bool>> False<T> () { return f => false; }

		public static Expression<Func<T, bool>> Or<T> (this Expression<Func<T, bool>> expr1,
												  Expression<Func<T, bool>> expr2)
		{
			var invokedExpr = Expression.Invoke (expr2, expr1.Parameters.Cast<Expression> ());
			return Expression.Lambda<Func<T, bool>>
				 (Expression.OrElse (expr1.Body, invokedExpr), expr1.Parameters);
		}

		public static Expression<Func<T, bool>> And<T> (this Expression<Func<T, bool>> expr1,
												   Expression<Func<T, bool>> expr2)
		{
			var invokedExpr = Expression.Invoke (expr2, expr1.Parameters.Cast<Expression> ());
			return Expression.Lambda<Func<T, bool>>
				 (Expression.AndAlso (expr1.Body, invokedExpr), expr1.Parameters);
		}

        
        public static Expression<Func<T, bool>> WhereIn<T, TKey>(Expression<Func<T, TKey>> propertySelector, IEnumerable<TKey> values)
        {
            ParameterExpression p = propertySelector.Parameters.Single();
            if (!values.Any())
                return e => false;

            var equals = values.Select(value => (Expression)Expression.Equal(propertySelector.Body, Expression.Constant(value, typeof(TKey))));
            var body = equals.Aggregate<Expression>((accumulate, equal) => Expression.OrElse(accumulate, equal));

            return Expression.Lambda<Func<T, bool>>(body, p);
        }  
	}

}
