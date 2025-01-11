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
    public partial class SystemFunction
    {
        #region Primitive Properties
    
        public virtual int FunctionID
        {
            get;
            set;
        }
    
        public virtual string FunctionName
        {
            get;
            set;
        }
    
        public virtual string Description
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> time_created
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> last_modified
        {
            get;
            set;
        }
    
        public virtual int last_modified_by
        {
            get;
            set;
        }
    
        public virtual bool is_valid
        {
            get;
            set;
        }
    
        public virtual string FunctionUrl
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual ICollection<Group> Groups
        {
            get
            {
                if (_groups == null)
                {
                    var newCollection = new FixupCollection<Group>();
                    newCollection.CollectionChanged += FixupGroups;
                    _groups = newCollection;
                }
                return _groups;
            }
            set
            {
                if (!ReferenceEquals(_groups, value))
                {
                    var previousValue = _groups as FixupCollection<Group>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupGroups;
                    }
                    _groups = value;
                    var newValue = value as FixupCollection<Group>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupGroups;
                    }
                }
            }
        }
        private ICollection<Group> _groups;
    
        public virtual ICollection<User> Users
        {
            get
            {
                if (_users == null)
                {
                    var newCollection = new FixupCollection<User>();
                    newCollection.CollectionChanged += FixupUsers;
                    _users = newCollection;
                }
                return _users;
            }
            set
            {
                if (!ReferenceEquals(_users, value))
                {
                    var previousValue = _users as FixupCollection<User>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupUsers;
                    }
                    _users = value;
                    var newValue = value as FixupCollection<User>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupUsers;
                    }
                }
            }
        }
        private ICollection<User> _users;

        #endregion
        #region Association Fixup
    
        private void FixupGroups(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Group item in e.NewItems)
                {
                    if (!item.SystemFunctions.Contains(this))
                    {
                        item.SystemFunctions.Add(this);
                    }
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Group item in e.OldItems)
                {
                    if (item.SystemFunctions.Contains(this))
                    {
                        item.SystemFunctions.Remove(this);
                    }
                }
            }
        }
    
        private void FixupUsers(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (User item in e.NewItems)
                {
                    if (!item.SystemFunctions.Contains(this))
                    {
                        item.SystemFunctions.Add(this);
                    }
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (User item in e.OldItems)
                {
                    if (item.SystemFunctions.Contains(this))
                    {
                        item.SystemFunctions.Remove(this);
                    }
                }
            }
        }

        #endregion
    }
}
