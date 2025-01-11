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
    public partial class SiteDepartmentUser
    {
        #region Primitive Properties
    
        public virtual int SiteID
        {
            get { return _siteID; }
            set
            {
                if (_siteID != value)
                {
                    if (Site != null && Site.SiteID != value)
                    {
                        Site = null;
                    }
                    _siteID = value;
                }
            }
        }
        private int _siteID;
    
        public virtual int DepartmentID
        {
            get { return _departmentID; }
            set
            {
                if (_departmentID != value)
                {
                    if (Department != null && Department.DepartmentID != value)
                    {
                        Department = null;
                    }
                    _departmentID = value;
                }
            }
        }
        private int _departmentID;
    
        public virtual int UserID
        {
            get { return _userID; }
            set
            {
                if (_userID != value)
                {
                    if (User != null && User.UserID != value)
                    {
                        User = null;
                    }
                    _userID = value;
                }
            }
        }
        private int _userID;

        #endregion
        #region Navigation Properties
    
        public virtual Department Department
        {
            get { return _department; }
            set
            {
                if (!ReferenceEquals(_department, value))
                {
                    var previousValue = _department;
                    _department = value;
                    FixupDepartment(previousValue);
                }
            }
        }
        private Department _department;
    
        public virtual Site Site
        {
            get { return _site; }
            set
            {
                if (!ReferenceEquals(_site, value))
                {
                    var previousValue = _site;
                    _site = value;
                    FixupSite(previousValue);
                }
            }
        }
        private Site _site;
    
        public virtual User User
        {
            get { return _user; }
            set
            {
                if (!ReferenceEquals(_user, value))
                {
                    var previousValue = _user;
                    _user = value;
                    FixupUser(previousValue);
                }
            }
        }
        private User _user;

        #endregion
        #region Association Fixup
    
        private void FixupDepartment(Department previousValue)
        {
            if (previousValue != null && previousValue.SiteDepartmentUsers.Contains(this))
            {
                previousValue.SiteDepartmentUsers.Remove(this);
            }
    
            if (Department != null)
            {
                if (!Department.SiteDepartmentUsers.Contains(this))
                {
                    Department.SiteDepartmentUsers.Add(this);
                }
                if (DepartmentID != Department.DepartmentID)
                {
                    DepartmentID = Department.DepartmentID;
                }
            }
        }
    
        private void FixupSite(Site previousValue)
        {
            if (previousValue != null && previousValue.SiteDepartmentUsers.Contains(this))
            {
                previousValue.SiteDepartmentUsers.Remove(this);
            }
    
            if (Site != null)
            {
                if (!Site.SiteDepartmentUsers.Contains(this))
                {
                    Site.SiteDepartmentUsers.Add(this);
                }
                if (SiteID != Site.SiteID)
                {
                    SiteID = Site.SiteID;
                }
            }
        }
    
        private void FixupUser(User previousValue)
        {
            if (previousValue != null && previousValue.SiteDepartmentUsers.Contains(this))
            {
                previousValue.SiteDepartmentUsers.Remove(this);
            }
    
            if (User != null)
            {
                if (!User.SiteDepartmentUsers.Contains(this))
                {
                    User.SiteDepartmentUsers.Add(this);
                }
                if (UserID != User.UserID)
                {
                    UserID = User.UserID;
                }
            }
        }

        #endregion
    }
}