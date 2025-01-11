using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.Psychotherapy.Models;

namespace Insourcia.Psychotherapy.Utility.Security
{
    public class Permission
    {
        /// <summary>
        /// 验证指定用户是否对指定Patient有权限
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <param name="formDataID">Patient ID</param>
        /// <param name="rights">
        /// 权限 ： 1表示读权限，2表示下载权限，3表示写权限
        /// </param>
        /// <returns></returns>
        public static void PatientPermission(int userID, int patientID, out bool read, out bool download, out bool write,out bool isOwner)
        {
            PermissionBll bll = new PermissionBll();
            UserPatientPermission permission = bll.GetPatientPermission(userID, patientID);
            isOwner = false;
            if (permission == null)
            {
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null) throw new Exception("Patient is not exist.");
                isOwner = patient.UserID == userID;
                read = isOwner;
                download = isOwner;
                write = isOwner; ;
            }
            else
            {
                isOwner = permission.Patient.UserID == userID;
                read = isOwner || permission.can_read;
                download = isOwner || permission.can_download;
                write = isOwner || permission.can_write;
            }
        }

        /// <summary>
        /// 验证指定用户是否对指定FormData有权限
        /// </summary>
        /// <param name="userID">用户ID</param>
        /// <param name="formDataID">FormData ID</param>
        /// <param name="read">返回的读权限</param>
        /// <param name="download">返回的下载权限</param>
        /// <param name="write">返回的写权限</param>
        /// <returns></returns>
        public static void FormDataPermission(int userID, int formDataID, out bool read, out bool download, out bool write)
        {
            PermissionBll bll = new PermissionBll();
            UserFormDataPermission permission = bll.GetFormPermission(userID, formDataID);
            bool isOwner = false;
            FormDataBll formDataBll = new FormDataBll();
            FormData formData = formDataBll.GetFormDataByID(formDataID);
            if (formData == null) throw new Exception("FormData is not exist.");
            isOwner = formData.UserID == userID;

            if (permission == null)
            {
                read = isOwner;
                download = isOwner;
                write = isOwner; ;
            }
            else
            {
                read = isOwner || permission.can_read;
                download = isOwner || permission.can_download;
                write = isOwner || permission.can_write;
            }
        }

        public static void TreatmentPlanPermission(int userID, int treatmentPlanID, out bool read, out bool download, out bool write,out bool isOwner)
        {
            PermissionBll bll = new PermissionBll();
            UserTreatmentPlanPermission permission = bll.GetTreatmentPlanPermission(userID, treatmentPlanID);
            isOwner = false;
            TreatmentPlanBll tmpBll = new TreatmentPlanBll();
            TreatmentPlan treatmentPlan = tmpBll.GetModel(t => t.TreatmentPlanID == treatmentPlanID);
            if (treatmentPlan == null) throw new Exception("TreatmentPlan is not exist.");
            isOwner = treatmentPlan.UserId == userID;

            if (permission == null)
            {
                read = isOwner;
                download = isOwner;
                write = isOwner; ;
            }
            else
            {
                read = isOwner || permission.can_read;
                download = isOwner || permission.can_download;
                write = isOwner || permission.can_write;
            }
        }

        public static void FilePermission(int userID, int fileID, out bool read, out bool download, out bool write)
        {
            PermissionBll bll = new PermissionBll();
            UserFilePermission permission = bll.GetFilePermission(userID, fileID);
            bool isOwner = false;
            FilesBll fileBll = new FilesBll();
            File file = fileBll.GetModel(t => t.FileID == fileID);
            if (file == null) throw new Exception("File is not exist.");
            isOwner = file.UserID == userID;

            if (permission == null)
            {
                read = isOwner;
                download = isOwner;
                write = isOwner; ;
            }
            else
            {
                read = isOwner || permission.can_read;
                download = isOwner || permission.can_download;
                write = isOwner || permission.can_write;
            }
        }
    }
}