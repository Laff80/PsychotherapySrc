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
    public partial class Site
    {
        #region Primitive Properties
    
        public virtual int SiteID
        {
            get;
            set;
        }
    
        public virtual string SiteName
        {
            get;
            set;
        }
    
        public virtual string Description
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
    
        public virtual ICollection<Patient> Patients
        {
            get
            {
                if (_patients == null)
                {
                    var newCollection = new FixupCollection<Patient>();
                    newCollection.CollectionChanged += FixupPatients;
                    _patients = newCollection;
                }
                return _patients;
            }
            set
            {
                if (!ReferenceEquals(_patients, value))
                {
                    var previousValue = _patients as FixupCollection<Patient>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupPatients;
                    }
                    _patients = value;
                    var newValue = value as FixupCollection<Patient>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupPatients;
                    }
                }
            }
        }
        private ICollection<Patient> _patients;
    
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
    
        private void FixupPatients(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Patient item in e.NewItems)
                {
                    item.Site = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Patient item in e.OldItems)
                {
                    if (ReferenceEquals(item.Site, this))
                    {
                        item.Site = null;
                    }
                }
            }
        }
    
        private void FixupSiteDepartmentUsers(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (SiteDepartmentUser item in e.NewItems)
                {
                    item.Site = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (SiteDepartmentUser item in e.OldItems)
                {
                    if (ReferenceEquals(item.Site, this))
                    {
                        item.Site = null;
                    }
                }
            }
        }

        #endregion
    }
}
