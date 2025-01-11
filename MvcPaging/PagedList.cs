using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.WebControls.MvcPaging
{
    public class PagedList<T> : List<T>, IPagedList<T>
    {
        private PagedList()
        { }


        #region MyRegion
        //public static PagedList<T> CreatePagedList(IEnumerable<T> list, int pageIndex, int pageSize,int totalCount)
        //{
        //    if (list == null)
        //        list = new List<T>();
        //    PagedList<T> page = new PagedList<T>();
        //    if (pageIndex < 1)
        //    {
        //        pageIndex = 1;
        //    }
        //    if (pageSize < 1)
        //    {
        //        pageSize = 1;
        //    }
        //    page.TotalItemCount = totalCount;
        //    page.PageSize = pageSize;
        //    if (page.TotalItemCount > 0)
        //    {
        //        page.TotalPageCount = (int)Math.Ceiling(page.TotalItemCount / (double)page.PageSize);
        //        if (pageIndex > page.TotalPageCount)
        //            pageIndex = page.TotalPageCount;
        //    }
        //    else
        //    {
        //        page.TotalPageCount = 0;
        //    }
        //    page.CurrentPageIndex = pageIndex;
        //    page.HasPreviousPage = page.CurrentPageIndex > 1;
        //    page.HasNextPage = page.CurrentPageIndex < page.TotalPageCount;
        //    page.IsFirstPage = page.CurrentPageIndex == 1;
        //    page.IsLastPage = page.CurrentPageIndex == page.TotalPageCount;
        //    page.AddRange(list);
        //    return page;
        //} 
        #endregion

        public PagedList(IEnumerable<T> source, int index, int pageSize)
            : this(source, index, pageSize, null)
        {
        }

        public PagedList(IEnumerable<T> source, int index, int pageSize, int? totalCount)
        {
            Initialize(source.AsQueryable(), index, pageSize, totalCount);
        }

        public PagedList(IQueryable<T> source, int index, int pageSize)
            : this(source, index, pageSize, null)
        {
        }

        public PagedList(IQueryable<T> source, int index, int pageSize, int? totalCount)
        {
            Initialize(source, index, pageSize, totalCount);
        }

        #region IPagedList Members

        public int TotalPageCount { get; private set; }
        public int TotalItemCount { get; private set; }
        public int CurrentPageIndex { get; private set; }
        public int PageSize { get; private set; }
        public int StartRecordIndex { get; private set; }
        public int EndRecordIndex { get; private set; }

        public bool HasPreviousPage { get; private set; }
        public bool HasNextPage { get; private set; }
        public bool IsFirstPage { get; private set; }
        public bool IsLastPage { get; private set; }

        #endregion

        protected void Initialize(IQueryable<T> source, int pageIndex, int pageSize, int? totalCount)
        {
            //### argument checking
            if (pageIndex < 1)
            {
                pageIndex = 1;
            }
            if (pageSize < 1)
            {
                pageSize = 1;
            }

            //### set source to blank list if source is null to prevent exceptions
            if (source == null)
            {
                source = new List<T>().AsQueryable();
            }

            //### set properties
            TotalItemCount =totalCount.HasValue?totalCount.Value: source.Count();
            
           

            PageSize = pageSize;           
            if (TotalItemCount > 0)
            {
                TotalPageCount = (int)Math.Ceiling(TotalItemCount / (double)PageSize);
                if (pageIndex > TotalPageCount)
                    pageIndex = TotalPageCount;
            }
            else
            {
                TotalPageCount = 0;
            }
            CurrentPageIndex = pageIndex;
            HasPreviousPage = CurrentPageIndex > 1;
            HasNextPage = CurrentPageIndex < TotalPageCount;
            IsFirstPage = CurrentPageIndex == 1;
            IsLastPage = CurrentPageIndex == TotalPageCount;

            //### add items to internal list           
            if (totalCount.HasValue && totalCount.Value > 0)
            {
                AddRange(source);
            }
            else if(TotalItemCount > 0)
            {                
                AddRange(source.Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList());
            }
        }
    }
}
