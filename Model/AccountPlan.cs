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
    public partial class AccountPlan
    {
        #region Primitive Properties
    
        public virtual int AccountPlanID
        {
            get;
            set;
        }
    
        public virtual string PlanName
        {
            get;
            set;
        }
    
        public virtual string Description
        {
            get;
            set;
        }
    
        public virtual decimal Price
        {
            get;
            set;
        }
    
        public virtual int NumUsers
        {
            get;
            set;
        }
    
        public virtual int Quota
        {
            get;
            set;
        }
    
        public virtual short Expired
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
    
        public virtual int LastModifiedBy
        {
            get;
            set;
        }
    
        public virtual bool IsValid
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual ICollection<Account> Accounts
        {
            get
            {
                if (_accounts == null)
                {
                    var newCollection = new FixupCollection<Account>();
                    newCollection.CollectionChanged += FixupAccounts;
                    _accounts = newCollection;
                }
                return _accounts;
            }
            set
            {
                if (!ReferenceEquals(_accounts, value))
                {
                    var previousValue = _accounts as FixupCollection<Account>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupAccounts;
                    }
                    _accounts = value;
                    var newValue = value as FixupCollection<Account>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupAccounts;
                    }
                }
            }
        }
        private ICollection<Account> _accounts;

        #endregion
        #region Association Fixup
    
        private void FixupAccounts(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Account item in e.NewItems)
                {
                    item.AccountPlan = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Account item in e.OldItems)
                {
                    if (ReferenceEquals(item.AccountPlan, this))
                    {
                        item.AccountPlan = null;
                    }
                }
            }
        }

        #endregion
    }
}
