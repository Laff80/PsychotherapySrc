using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using Insourcia.WebControls.MvcPaging;
using System.Linq.Expressions;
using LinqKit;

namespace Insourcia.Psychotherapy.Bll
{
    public class UserTypeBll
    {
        private IRepository<UserType> userTypeContext;
        private PsychotherapyEntities entities;

        public UserTypeBll()
         {
            entities = new PsychotherapyEntities();
            userTypeContext = new Repository<UserType>(entities);
         }

        public IList<UserType> GetAllUserTypes()
        {
            return userTypeContext.FindAll();
        }
    }
}
