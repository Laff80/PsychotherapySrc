using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
namespace Insourcia.Psychotherapy.Bll
{
    public class ClinicalServiceDiagnosisBll : BaseBll<ClinicalServiceDiagnosi>
    {
        private IRepository<ClinicalServiceDiagnosi> clinicalservicediagnosiContext;
        PsychotherapyEntities entities;
        public ClinicalServiceDiagnosisBll()
        {
            entities = new PsychotherapyEntities();
            clinicalservicediagnosiContext = new Repository<ClinicalServiceDiagnosi>(entities);
            Context = clinicalservicediagnosiContext;
        }
        public IList<ClinicalServiceDiagnosi> GetListByClinicalServiceID(int clinicalServiceID)
        {
           return Context.Find(C => C.ClinicalServiceID == clinicalServiceID).ToList();
        }
        public IList<int> GetSymptomIDList(int clinicalServiceID)
        {
          return  Context.FindResult<int>(C => C.ClinicalServiceID == clinicalServiceID, sel => sel.SymptomID.Value);
        }
    }
}
