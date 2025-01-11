using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.Psychotherapy.Model
{
  public partial  class LogActionType
  {
      #region Primitive Properties
     
        /// <summary>
        /// 操作类型
        /// </summary>
        public ActionTypeOptions EnumValue
        {
            get { return (ActionTypeOptions)Value; }
            set { Value =(int) value; }
        }

        #endregion

        #region Constructors
        /// <summary>
        /// 实例化LogActionType对象
        /// </summary>
        public LogActionType()
        {
            Value = (int) ActionTypeOptions.None;
        }

        /// <summary>
        /// 实例化LogActionType对象
        /// </summary>
        /// <param name="value">表示ActionTypeOptions 的整型</param>
        public LogActionType(int value)
        {
            Value = value;           
        }
        /// <summary>
        /// 实例化LogActionType对象
        /// </summary>
        /// <param name="type">ActionTypeOptions 类型值</param>
        public LogActionType(ActionTypeOptions type)
        {
            Value = (int)type;
        }
        #endregion

        #region overwrite operator
        public static implicit operator int(LogActionType actionType)
        {
            if (actionType == null)
                return (int)ActionTypeOptions.None;
            return actionType.Value;
        }
        public static implicit operator LogActionType(int value)
        {
            return new LogActionType(value);
        }

        public static implicit operator ActionTypeOptions(LogActionType actionType)
        {
            if (actionType == null) return ActionTypeOptions.None;
            return actionType.EnumValue;
        }

        public static implicit operator LogActionType(ActionTypeOptions enumType)
        {
            return new LogActionType(enumType);
        } 
        #endregion
    }
}
