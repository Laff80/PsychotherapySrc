using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Bll;



namespace Psychotherapy.Models
{
    public class PatientModel
    {
        public Patient Data { get; set; }


        public static void GetClient(int id)
        {
            PatientModel model = new PatientModel();
            PatientBll bll = new PatientBll();
            model.Data = bll.GetPatientByID(id);
        }
    }
}