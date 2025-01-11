using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;

namespace Insourcia.Psychotherapy.Bll
{
    public class ClinicalServiceNoteRateBll : BaseBll<ClinicalServiceNoteRate>
    {
        private IRepository<ClinicalServiceNoteRate> CSNRContext;
        private PsychotherapyEntities entities;

        public ClinicalServiceNoteRateBll()
        {
            entities = new PsychotherapyEntities();
            CSNRContext = new Repository<ClinicalServiceNoteRate>(entities);
            Context = CSNRContext;
        }

        public IList<ClinicalServiceNoteRate> GetListByClinicalServiceID(int clinicalServiceID)
        {
            return Context.Find(C => C.ClinicalServiceID == clinicalServiceID).ToList();
        }

        public IList<ClinicalServiceNoteRate> GetListByTreatmentPlanID(int id)
        {
            return Context.Find(C => C.TreatmentPlanID == id).ToList();
        }

        public IList<ClinicalServiceNoteRate> GerAllList()
        {
            return Context.FindAll();
        }
    }
}
