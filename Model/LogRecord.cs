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
    public partial class LogRecord
    {
        #region Primitive Properties
    
        public virtual int ID
        {
            get;
            set;
        }
    
        public virtual System.DateTime Date
        {
            get;
            set;
        }
    
        public virtual string Thread
        {
            get;
            set;
        }
    
        public virtual string Level
        {
            get;
            set;
        }
    
        public virtual string Logger
        {
            get;
            set;
        }
    
        public virtual string Message
        {
            get;
            set;
        }
    
        public virtual string Operand
        {
            get;
            set;
        }
    
        public virtual string IP
        {
            get;
            set;
        }
    
        public virtual string Exception
        {
            get;
            set;
        }
    
        public virtual string UserID
        {
            get;
            set;
        }
    
        public virtual string UserName
        {
            get;
            set;
        }

        #endregion
        #region Complex Properties
    
        public virtual LogTypeWrapper LogType
        {
            get { return _logType; }
            set { _logType = value; }
        }
        private LogTypeWrapper _logType = new LogTypeWrapper();
    
        public virtual LogActionType ActionType
        {
            get { return _actionType; }
            set { _actionType = value; }
        }
        private LogActionType _actionType = new LogActionType();

        #endregion
    }
}
