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
    public partial class ProcessGuide
    {
        #region Primitive Properties
    
        public virtual int ProcessGuideID
        {
            get;
            set;
        }
    
        public virtual string Title
        {
            get;
            set;
        }
    
        public virtual string YesID
        {
            get;
            set;
        }
    
        public virtual string NoID
        {
            get;
            set;
        }
    
        public virtual Nullable<bool> IsValid
        {
            get;
            set;
        }
    
        public virtual string Level
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> LastModified
        {
            get;
            set;
        }
    
        public virtual string JumpAction
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> TimeCreated
        {
            get;
            set;
        }

        #endregion
    }
}