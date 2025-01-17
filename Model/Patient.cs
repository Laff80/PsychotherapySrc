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
    public partial class Patient
    {
        #region Primitive Properties
    
        public virtual int PatientID
        {
            get;
            set;
        }
    
        public virtual string FirstName
        {
            get;
            set;
        }
    
        public virtual string MiddleName
        {
            get;
            set;
        }
    
        public virtual string LastName
        {
            get;
            set;
        }
    
        public virtual string GRID
        {
            get;
            set;
        }
    
        public virtual string AdmissionDay
        {
            get;
            set;
        }
    
        public virtual string BirthDay
        {
            get;
            set;
        }
    
        public virtual string Ethnicity
        {
            get;
            set;
        }
    
        public virtual string Gender
        {
            get;
            set;
        }
    
        public virtual string MaritalStatus
        {
            get;
            set;
        }
    
        public virtual string LivingSituation
        {
            get;
            set;
        }
    
        public virtual string ReferralSource
        {
            get;
            set;
        }
    
        public virtual string Relationship
        {
            get;
            set;
        }
    
        public virtual string LegalGuardian
        {
            get;
            set;
        }
    
        public virtual string Address
        {
            get;
            set;
        }
    
        public virtual string Treatment
        {
            get;
            set;
        }
    
        public virtual string Household
        {
            get;
            set;
        }
    
        public virtual Nullable<int> Age
        {
            get;
            set;
        }
    
        public virtual string SymptomsInfo
        {
            get;
            set;
        }
    
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
    
        public virtual ICollection<TreatmentPlan> TreatmentPlans
        {
            get
            {
                if (_treatmentPlans == null)
                {
                    var newCollection = new FixupCollection<TreatmentPlan>();
                    newCollection.CollectionChanged += FixupTreatmentPlans;
                    _treatmentPlans = newCollection;
                }
                return _treatmentPlans;
            }
            set
            {
                if (!ReferenceEquals(_treatmentPlans, value))
                {
                    var previousValue = _treatmentPlans as FixupCollection<TreatmentPlan>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupTreatmentPlans;
                    }
                    _treatmentPlans = value;
                    var newValue = value as FixupCollection<TreatmentPlan>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupTreatmentPlans;
                    }
                }
            }
        }
        private ICollection<TreatmentPlan> _treatmentPlans;
    
        public virtual ICollection<UserPatientPermission> UserPatientPermissions
        {
            get
            {
                if (_userPatientPermissions == null)
                {
                    var newCollection = new FixupCollection<UserPatientPermission>();
                    newCollection.CollectionChanged += FixupUserPatientPermissions;
                    _userPatientPermissions = newCollection;
                }
                return _userPatientPermissions;
            }
            set
            {
                if (!ReferenceEquals(_userPatientPermissions, value))
                {
                    var previousValue = _userPatientPermissions as FixupCollection<UserPatientPermission>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupUserPatientPermissions;
                    }
                    _userPatientPermissions = value;
                    var newValue = value as FixupCollection<UserPatientPermission>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupUserPatientPermissions;
                    }
                }
            }
        }
        private ICollection<UserPatientPermission> _userPatientPermissions;
    
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
    
        private void FixupSite(Site previousValue)
        {
            if (previousValue != null && previousValue.Patients.Contains(this))
            {
                previousValue.Patients.Remove(this);
            }
    
            if (Site != null)
            {
                if (!Site.Patients.Contains(this))
                {
                    Site.Patients.Add(this);
                }
                if (SiteID != Site.SiteID)
                {
                    SiteID = Site.SiteID;
                }
            }
        }
    
        private void FixupUser(User previousValue)
        {
            if (previousValue != null && previousValue.Patients.Contains(this))
            {
                previousValue.Patients.Remove(this);
            }
    
            if (User != null)
            {
                if (!User.Patients.Contains(this))
                {
                    User.Patients.Add(this);
                }
                if (UserID != User.UserID)
                {
                    UserID = User.UserID;
                }
            }
        }
    
        private void FixupTreatmentPlans(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (TreatmentPlan item in e.NewItems)
                {
                    item.Patient = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (TreatmentPlan item in e.OldItems)
                {
                    if (ReferenceEquals(item.Patient, this))
                    {
                        item.Patient = null;
                    }
                }
            }
        }
    
        private void FixupUserPatientPermissions(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (UserPatientPermission item in e.NewItems)
                {
                    item.Patient = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (UserPatientPermission item in e.OldItems)
                {
                    if (ReferenceEquals(item.Patient, this))
                    {
                        item.Patient = null;
                    }
                }
            }
        }

        #endregion
    }
}
