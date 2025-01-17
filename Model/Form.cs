//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

namespace Insourcia.Psychotherapy.Model
{
    public partial class Form
    {
        #region Primitive Properties
    
        public virtual int FormID
        {
            get;
            set;
        }
    
        public virtual string FormName
        {
            get;
            set;
        }
    
        public virtual string TemplatePath
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual ICollection<FormData> FormDatas
        {
            get
            {
                if (_formDatas == null)
                {
                    var newCollection = new FixupCollection<FormData>();
                    newCollection.CollectionChanged += FixupFormDatas;
                    _formDatas = newCollection;
                }
                return _formDatas;
            }
            set
            {
                if (!ReferenceEquals(_formDatas, value))
                {
                    var previousValue = _formDatas as FixupCollection<FormData>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupFormDatas;
                    }
                    _formDatas = value;
                    var newValue = value as FixupCollection<FormData>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupFormDatas;
                    }
                }
            }
        }
        private ICollection<FormData> _formDatas;
    
        public virtual ICollection<Category> Categories
        {
            get
            {
                if (_categories == null)
                {
                    var newCollection = new FixupCollection<Category>();
                    newCollection.CollectionChanged += FixupCategories;
                    _categories = newCollection;
                }
                return _categories;
            }
            set
            {
                if (!ReferenceEquals(_categories, value))
                {
                    var previousValue = _categories as FixupCollection<Category>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupCategories;
                    }
                    _categories = value;
                    var newValue = value as FixupCollection<Category>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupCategories;
                    }
                }
            }
        }
        private ICollection<Category> _categories;

        #endregion
        #region Association Fixup
    
        private void FixupFormDatas(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (FormData item in e.NewItems)
                {
                    item.Form = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (FormData item in e.OldItems)
                {
                    if (ReferenceEquals(item.Form, this))
                    {
                        item.Form = null;
                    }
                }
            }
        }
    
        private void FixupCategories(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Category item in e.NewItems)
                {
                    if (!item.Forms.Contains(this))
                    {
                        item.Forms.Add(this);
                    }
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Category item in e.OldItems)
                {
                    if (item.Forms.Contains(this))
                    {
                        item.Forms.Remove(this);
                    }
                }
            }
        }

        #endregion
    }
}
