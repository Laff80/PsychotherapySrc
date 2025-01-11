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
    public partial class File
    {
        #region Primitive Properties
    
        public virtual int FileID
        {
            get;
            set;
        }
    
        public virtual string FileName
        {
            get;
            set;
        }
    
        public virtual Nullable<int> PatientID
        {
            get;
            set;
        }
    
        public virtual string Path
        {
            get;
            set;
        }
    
        public virtual string Description
        {
            get;
            set;
        }
    
        public virtual Nullable<int> Size
        {
            get;
            set;
        }
    
        public virtual string Type
        {
            get;
            set;
        }
    
        public virtual string MIME
        {
            get;
            set;
        }
    
        public virtual Nullable<int> UserID
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> TimeCreated
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
    
        public virtual ICollection<UserFilePermission> UserFilePermissions
        {
            get
            {
                if (_userFilePermissions == null)
                {
                    var newCollection = new FixupCollection<UserFilePermission>();
                    newCollection.CollectionChanged += FixupUserFilePermissions;
                    _userFilePermissions = newCollection;
                }
                return _userFilePermissions;
            }
            set
            {
                if (!ReferenceEquals(_userFilePermissions, value))
                {
                    var previousValue = _userFilePermissions as FixupCollection<UserFilePermission>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupUserFilePermissions;
                    }
                    _userFilePermissions = value;
                    var newValue = value as FixupCollection<UserFilePermission>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupUserFilePermissions;
                    }
                }
            }
        }
        private ICollection<UserFilePermission> _userFilePermissions;

        #endregion
        #region Association Fixup
    
        private void FixupUserFilePermissions(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (UserFilePermission item in e.NewItems)
                {
                    item.File = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (UserFilePermission item in e.OldItems)
                {
                    if (ReferenceEquals(item.File, this))
                    {
                        item.File = null;
                    }
                }
            }
        }

        #endregion
    }
}
