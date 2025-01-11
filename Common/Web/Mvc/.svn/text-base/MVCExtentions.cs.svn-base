using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;

namespace Insourcia.Common.Web.Mvc
{
   public static class MVCExtentions
    {
        public static IEnumerable<SelectListItem> ToSelectList<T>(
             this IEnumerable<T> enumerable,
             Func<T, string> text,
             Func<T, string> value,
             string selectedValue)
        {
            var items = enumerable.Select(f => new SelectListItem()
            {
                Text = text(f),
                Value = value(f),
                Selected = value(f).Equals(selectedValue)
            });
            return items;
        }
        public static IEnumerable<SelectListItem> ToSelectList<T>(
            this IEnumerable<T> enumerable,
            Func<T, string> text,
            Func<T, string> value)
        {
            var items = enumerable.Select(f => new SelectListItem()
            {
                Text = text(f),
                Value = value(f)
            });
            return items;
        } 
    }
}
