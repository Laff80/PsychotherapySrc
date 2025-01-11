using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.WebControls.MvcPaging
{
    public interface IPagedList<T> : IList<T>
    {
        int TotalPageCount { get; }
        int TotalItemCount { get; }
        int CurrentPageIndex { get; }
        int PageSize { get; }
        bool HasPreviousPage { get; }
        bool HasNextPage { get; }
        bool IsFirstPage { get; }
        bool IsLastPage { get; }
        int StartRecordIndex { get; }
        int EndRecordIndex { get; }
    }
}
