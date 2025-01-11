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
    public partial class Objective
    {
        #region Primitive Properties
    
        public virtual int ObjectiveID
        {
            get;
            set;
        }
    
        public virtual string Title
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> CreateTime
        {
            get;
            set;
        }
    
        public virtual Nullable<bool> IsValid
        {
            get;
            set;
        }
    
        public virtual string StartValue
        {
            get;
            set;
        }
    
        public virtual string EndValue
        {
            get;
            set;
        }
    
        public virtual string Measure
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> LastModifiedTime
        {
            get;
            set;
        }
    
        public virtual Nullable<decimal> Space
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual ICollection<LongTermGoal> LongTermGoals
        {
            get
            {
                if (_longTermGoals == null)
                {
                    var newCollection = new FixupCollection<LongTermGoal>();
                    newCollection.CollectionChanged += FixupLongTermGoals;
                    _longTermGoals = newCollection;
                }
                return _longTermGoals;
            }
            set
            {
                if (!ReferenceEquals(_longTermGoals, value))
                {
                    var previousValue = _longTermGoals as FixupCollection<LongTermGoal>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupLongTermGoals;
                    }
                    _longTermGoals = value;
                    var newValue = value as FixupCollection<LongTermGoal>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupLongTermGoals;
                    }
                }
            }
        }
        private ICollection<LongTermGoal> _longTermGoals;
    
        public virtual ICollection<Strategy> Strategies
        {
            get
            {
                if (_strategies == null)
                {
                    var newCollection = new FixupCollection<Strategy>();
                    newCollection.CollectionChanged += FixupStrategies;
                    _strategies = newCollection;
                }
                return _strategies;
            }
            set
            {
                if (!ReferenceEquals(_strategies, value))
                {
                    var previousValue = _strategies as FixupCollection<Strategy>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupStrategies;
                    }
                    _strategies = value;
                    var newValue = value as FixupCollection<Strategy>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupStrategies;
                    }
                }
            }
        }
        private ICollection<Strategy> _strategies;

        #endregion
        #region Association Fixup
    
        private void FixupLongTermGoals(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (LongTermGoal item in e.NewItems)
                {
                    if (!item.Objectives.Contains(this))
                    {
                        item.Objectives.Add(this);
                    }
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (LongTermGoal item in e.OldItems)
                {
                    if (item.Objectives.Contains(this))
                    {
                        item.Objectives.Remove(this);
                    }
                }
            }
        }
    
        private void FixupStrategies(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Strategy item in e.NewItems)
                {
                    if (!item.Objectives.Contains(this))
                    {
                        item.Objectives.Add(this);
                    }
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Strategy item in e.OldItems)
                {
                    if (item.Objectives.Contains(this))
                    {
                        item.Objectives.Remove(this);
                    }
                }
            }
        }

        #endregion
    }
}