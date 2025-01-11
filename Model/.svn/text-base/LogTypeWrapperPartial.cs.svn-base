using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.Psychotherapy.Model
{
   public partial class LogTypeWrapper
    {
       #region Primitive Properties
      //private LogMessageType mEnumValue;
        /// <summary>
        /// 消息类型
        /// </summary>
        public LogMessageType EnumValue
        {
            get { return (LogMessageType)Value; }
            set { Value = (int)value; }
        }

        #endregion

        #region Constructors
        /// <summary>
        /// 实例化LogActionType对象
        /// </summary>
        public LogTypeWrapper()
        {
            Value=(int)LogMessageType.Others;
        }

        /// <summary>
        /// 实例化LogActionType对象
        /// </summary>
        /// <param name="value">表示ActionTypeOptions 的整型</param>
        public LogTypeWrapper(int value)
        {
            Value=value;           
        }
        /// <summary>
        /// 实例化LogActionType对象
        /// </summary>
        /// <param name="type">ActionTypeOptions 类型值</param>
        public LogTypeWrapper(LogMessageType type)
        {
            Value = (int)type;
        }
        #endregion

        #region overwrite operator
       
        public static implicit operator int(LogTypeWrapper type)
        {
            if (type==null)
            {
                return (int)LogMessageType.Others;
            }
            return type.Value;
        }
        public static implicit operator LogTypeWrapper(int value)
        {
            return new LogTypeWrapper(value);
        }

        public static implicit operator LogMessageType(LogTypeWrapper wrapper)
        {
            if (wrapper == null) return LogMessageType.Others;
            return wrapper.EnumValue;
        }

        public static implicit operator LogTypeWrapper(LogMessageType enumType)
        {
            return new LogTypeWrapper(enumType);
        } 
        #endregion
    }
}
