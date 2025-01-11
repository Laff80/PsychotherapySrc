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
    public partial class Department
    {
        #region Primitive Properties
    
        public virtual int DepartmentID
        {
            get;
            set;
        }
    
        public virtual string DepartmentName
        {
            get;
            set;
        }
    
        public virtual string Description
        {
            get;
            set;
        }
    
        public virtual Nullable<int> ManagerUserID
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> TimeCreated
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> LastModified
        {
            get;
            set;
        }
    
        public virtual Nullable<int> LastModifiedBy
        {
            get;
            set;
        }
    
        public virtual Nullable<bool> IsValid
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual ICollection<SiteDepartmentUser> SiteDepartmentUsers
        {
            get
            {
                if (_siteDepartmentUsers == null)
                {
                    var newCollection = new FixupCollection<SiteDepartmentUser>();
                    newCollection.CollectionChanged += FixupSiteDepartmentUsers;
                    _siteDepartmentUsers = newCollection;
                }
                return _siteDepartmentUsers;
            }
            set
            {
                if (!ReferenceEquals(_siteDepartmentUsers, value))
                {
                    var previousValue = _siteDepartmentUsers as FixupCollection<SiteDepartmentUser>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupSiteDepartmentUsers;
                    }
                    _siteDepartmentUsers = value;
                    var newValue = value as FixupCollection<SiteDepartmentUser>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupSiteDepartmentUsers;
                    }
                }
            }
        }
        private ICollection<SiteDepartmentUser> _siteDepartmentUsers;

        #endregion
        #region Association Fixup
    
        private void FixupSiteDepartmentUsers(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (SiteDepartmentUser item in e.NewItems)
                {
                    item.Department = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (SiteDepartmentUser item in e.OldItems)
                {
                    if (ReferenceEquals(item.Department, this))
                    {
                        item.Department = null;
                    }
                }
            }
        }

        #endregion
    }
}