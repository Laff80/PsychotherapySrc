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
    public enum SubItemType
    {
        Form,
        TreatmentPlan,
        SannedForm,
        Chart
    }
    public class PermissionBll : BaseBll<UserPatientPermission>
    {
        private IRepository<UserPatientPermission> patientPermissonContext;
        private IRepository<UserFormDataPermission> formPermissionContext;
        private IRepository<UserTreatmentPlanPermission> tmpPermissionContext;
        private IRepository<UserFilePermission> filePermissionContext;
        private PsychotherapyEntities entities;
        public PermissionBll()
        {
            entities = new PsychotherapyEntities();
            patientPermissonContext = new Repository<UserPatientPermission>(entities);
            formPermissionContext = new Repository<UserFormDataPermission>(entities);
            tmpPermissionContext = new Repository<UserTreatmentPlanPermission>(entities);
            filePermissionContext = new Repository<UserFilePermission>(entities);
            Context = patientPermissonContext;
        }

        #region Patient permission
        /// <summary>
        ///获取对Patient的权限信息
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="patientID"></param>
        /// <returns></returns>
        public UserPatientPermission GetPatientPermission(int userID, int patientID)
        {
            //Patient p = new Patient();            
            return patientPermissonContext.FirstOrDefault(p => p.UserID == userID && p.PatientID == patientID);
        }

        /// <summary>
        /// 获取指定Patient的共享信息
        /// </summary>
        /// <param name="patientID"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public IPagedList<UserPatientPermission> GetPatientPermissionList(int patientID, int pageIndex, int pageSize)
        {
            return GetPatientPermissionList(u => u.PatientID == patientID, pageIndex, pageSize);
        }
        /// <summary>
        /// 获取Patient权限列表
        /// </summary>
        /// <param name="where"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public IPagedList<UserPatientPermission> GetPatientPermissionList(Expression<Func<UserPatientPermission, bool>> where, int pageIndex, int pageSize)
        {
            if (where == null)
                where = PredicateBuilder.True<UserPatientPermission>();
            int index = pageIndex;
            int totalItemCount;
            IList<UserPatientPermission> list = patientPermissonContext.FindOrderBy<DateTime?>(where, u => u.time_created, ref index, pageSize, out totalItemCount);
            return list.ToPagedList(index, pageSize, totalItemCount);
        }

        public bool SetPatientPermission(List<UserPatientPermission> patientPermissionList)
        {
            if (patientPermissionList == null || patientPermissionList.Count == 0)
                throw new ArgumentNullException("patientPermissionList");
            int patientID = patientPermissionList[0].PatientID;
            IList<UserPatientPermission> oldPermissions = patientPermissonContext.Find(up => up.PatientID == patientID);
            foreach (var item in patientPermissionList)
            {
                UserPatientPermission permission = oldPermissions.FirstOrDefault(up => up.UserID == item.UserID);
                if (permission != null)
                {
                    permission.can_read = item.can_read;
                    permission.can_write = item.can_write;
                    permission.can_download = item.can_download;
                    permission.can_remove = item.can_remove;
                    permission.FormData = item.FormData;
                    permission.TreatmentPlanData = item.TreatmentPlanData;
                    permission.ScannedFormData = item.ScannedFormData;
                    permission.ChartData = item.ChartData;
                    permission.last_modified = DateTime.Now;
                    permission.is_valid = true;
                    patientPermissonContext.Update(permission);
                }
                else
                {
                    item.time_created = DateTime.Now;
                    item.last_modified = DateTime.Now;
                    item.is_valid = true;
                    patientPermissonContext.Add(item);
                }
            }
            return patientPermissonContext.Save() > 0;
        }

        /// <summary>
        /// 获取Forms全部共享列表
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public IPagedList<SubItemPermissionModel> GetFormsPermissionList(int userID, int patientID, SubItemType subItemType, int pageIndex, int pageSize)
        {
            /*NoneAllPermission 0,*
              CanRead       ALL,R
              CanWrite      ALL,W
              CanDownLoad   ALL,D
              CanUpload     ALL,U
              CanAnnotate   ALL,A
              CanCreate     ALL,C
              CanRemove     ALL,M
              CanPrint      ALL,P
             */
            Expression<Func<UserPatientPermission, SubItemPermissionModel>> selector = null;
            Expression<Func<UserPatientPermission, bool>> where = null;
            switch (subItemType)
            {
                case SubItemType.Form:
                    selector = up => new SubItemPermissionModel()
                    {
                        UserID = up.UserID,
                        UserName = up.User.LastName + "," + up.User.FirstName + (!string.IsNullOrEmpty(up.User.MiddleName) ? " " + up.User.MiddleName + "." : ""),
                        CanRead = (up.FormData.Substring(3).Contains("R") || up.FormData == "ALL,ALL") ? true : false,
                        CanWrite = (up.FormData.Substring(3).Contains("W") || up.FormData == "ALL,ALL") ? true : false,
                        Time_Created = up.time_created.Value,
                        Last_Modified = up.last_modified.Value
                    };
                    where = up => up.PatientID == patientID && up.Patient.UserID == userID && up.FormData.StartsWith("ALL");
                    break;
                case SubItemType.TreatmentPlan:
                    selector = up => new SubItemPermissionModel()
                    {
                        UserID = up.UserID,
                        UserName = up.User.LastName + "," + up.User.FirstName + (!string.IsNullOrEmpty(up.User.MiddleName) ? " " + up.User.MiddleName + "." : ""),
                        CanRead = (up.TreatmentPlanData.Substring(3).Contains("R") || up.TreatmentPlanData == "ALL,ALL") ? true : false,
                        CanWrite = (up.TreatmentPlanData.Substring(3).Contains("W") || up.TreatmentPlanData == "ALL,ALL") ? true : false,
                        Time_Created = up.time_created.Value,
                        Last_Modified = up.last_modified.Value
                    };
                    where = up => up.PatientID == patientID && up.Patient.UserID == userID && up.TreatmentPlanData.StartsWith("ALL");
                    break;
                case SubItemType.SannedForm:
                    selector = up => new SubItemPermissionModel()
                    {
                        UserID = up.UserID,
                        UserName = up.User.LastName + "," + up.User.FirstName + (!string.IsNullOrEmpty(up.User.MiddleName) ? " " + up.User.MiddleName + "." : ""),
                        CanRead = (up.ScannedFormData.Substring(3).Contains("R") || up.ScannedFormData == "ALL,ALL") ? true : false,
                        CanDownLoad = (up.ScannedFormData.Substring(3).Contains("D") || up.ScannedFormData == "ALL,ALL") ? true : false,
                        CanUpload = (up.ScannedFormData.Substring(3).Contains("U") || up.ScannedFormData == "ALL,ALL") ? true : false,
                        Time_Created = up.time_created.Value,
                        Last_Modified = up.last_modified.Value
                    };
                    where = up => up.PatientID == patientID && up.Patient.UserID == userID && up.ScannedFormData.StartsWith("ALL");
                    break;
                case SubItemType.Chart:
                    selector = up => new SubItemPermissionModel()
                    {
                        UserID = up.UserID,
                        UserName = up.User.LastName + "," + up.User.FirstName + (!string.IsNullOrEmpty(up.User.MiddleName) ? " " + up.User.MiddleName + "." : ""),
                        CanRead = (up.ChartData.Substring(3).Contains('R') || up.ChartData == "ALL,ALL") ? true : false,
                        //CanWrite = (up.ChartData == "ALL,2" || up.ChartData == "ALL,ALL") ? true : false,
                        //CanUpload = (up.ChartData == "ALL,4" || up.ChartData == "ALL,ALL") ? true : false,
                        Time_Created = up.time_created.Value,
                        Last_Modified = up.last_modified.Value
                    };
                    where = up => up.PatientID == patientID && up.Patient.UserID == userID && up.ChartData.StartsWith("ALL");
                    break;
                default:
                    break;
            }
            if (selector == null)
            {
                return null;
            }
            return entities.UserPatientPermissions.Where(where)
                .Select(selector)
                .OrderBy(f => f.Time_Created).ToPagedList(pageIndex, pageSize);
        }

        #endregion

        #region Form data permission

        /// <summary>
        /// 获取指定用户对指定FormData的权限信息
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="formDataID"></param>
        /// <returns></returns>
        public UserFormDataPermission GetFormPermission(int userID, int formDataID)
        {
            return formPermissionContext.FirstOrDefault(f => f.UserID == userID && formDataID == f.FormDataID);
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="where"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public IPagedList<UserFormDataPermission> GetFormPermissionList(int formDataID, int pageIndex, int pageSize)
        {
            return entities.UserFormDataPermissions.Where(f => f.FormDataID == formDataID).OrderBy(f => f.time_created).ToPagedList(pageIndex, pageSize);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="where"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public IPagedList<UserFormDataPermission> GetFormPermissionList(Expression<Func<UserFormDataPermission, bool>> where, int pageIndex, int pageSize)
        {
            if (where == null)
                where = PredicateBuilder.True<UserFormDataPermission>();
            return entities.UserFormDataPermissions.Where(where).OrderBy(f => f.time_created).ToPagedList(pageIndex, pageSize);
        }

        public bool SetFormPermission(List<UserFormDataPermission> formPermissionList)
        {
            if (formPermissionList == null || formPermissionList.Count == 0)
                throw new ArgumentNullException("patientPermissionList");
            int formDataID = formPermissionList[0].FormDataID;
            int patientID = formPermissionList[0].PatientID;
            IList<UserFormDataPermission> oldFormPermissions = formPermissionContext.Find(up => up.FormDataID == formDataID);
            IList<UserPatientPermission> oldPatientPermissions = patientPermissonContext.Find(p => p.PatientID == patientID);
            foreach (var item in formPermissionList)
            {
                UserFormDataPermission permission = oldFormPermissions.FirstOrDefault(up => up.UserID == item.UserID);
                UserPatientPermission patientPermission = oldPatientPermissions.FirstOrDefault(p => p.UserID == item.UserID);

                if (permission != null)
                {
                    permission.can_read = item.can_read;
                    permission.can_write = item.can_write;
                    permission.can_download = item.can_download;
                    permission.can_remove = item.can_remove;
                    permission.last_modified = DateTime.Now;
                    permission.is_valid = true;
                    permission.last_modified_by = item.last_modified_by;
                    formPermissionContext.Update(permission);
                }
                else
                {
                    item.time_created = DateTime.Now;
                    item.last_modified = DateTime.Now;
                    item.is_valid = true;
                    formPermissionContext.Add(item);
                }
                //设置patient权限
                if (patientPermission == null)
                {
                    patientPermission = new UserPatientPermission
                    {
                        UserID = item.UserID,
                        PatientID = item.PatientID,
                        can_read = item.can_read,
                        is_valid = true,
                        time_created = DateTime.Now,
                        last_modified = DateTime.Now,
                        last_modified_by = item.last_modified_by
                    };
                    patientPermissonContext.Add(patientPermission);
                }
                else
                {
                    //form 能读，patient必须得能读
                    patientPermission.can_read = patientPermission.can_read || item.can_read;
                    patientPermission.is_valid = true;
                    patientPermission.last_modified = DateTime.Now;
                    patientPermission.last_modified_by = item.last_modified_by;
                    patientPermissonContext.Update(patientPermission);
                }
            }
            return formPermissionContext.Save() > 0;
        }
        public bool SetFormsPermission(List<UserPatientPermission> formPermissionList)
        {
            if (formPermissionList == null || formPermissionList.Count == 0)
                throw new ArgumentNullException("patientPermissionList");
            int patientID = formPermissionList[0].PatientID;
            IList<UserPatientPermission> oldPatientPermissions = patientPermissonContext.Find(p => p.PatientID == patientID);
            foreach (var item in formPermissionList)
            {
                UserPatientPermission permission = oldPatientPermissions.FirstOrDefault(p => p.UserID == item.UserID);
                //设置patient权限
                if (permission != null)
                {
                    permission.can_read = item.can_read;
                    permission.FormData = item.FormData;
                    permission.last_modified = DateTime.Now;
                    permission.is_valid = true;
                    permission.last_modified_by = item.last_modified_by;
                    patientPermissonContext.Update(permission);
                }
                else
                {
                    item.time_created = DateTime.Now;
                    item.last_modified = DateTime.Now;
                    item.is_valid = true;
                    patientPermissonContext.Add(item);
                }
            }
            return patientPermissonContext.Save() > 0;
        }
        #endregion

        #region TreatmentPlan permission
        /// <summary>
        /// 获取指定用户对指定TreatmentPlan的权限信息
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="treatmentPlanID"></param>
        /// <returns></returns>
        public UserTreatmentPlanPermission GetTreatmentPlanPermission(int userID, int treatmentPlanID)
        {
            return tmpPermissionContext.FirstOrDefault(t => t.UserID == userID && t.TreatmentPlanID == treatmentPlanID);
        }

        public IList<UserTreatmentPlanPermission> GetTreatmentPlanPermissionList(Expression<Func<UserTreatmentPlanPermission, bool>> where,
            int pageIndex, int pageSize)
        {
            if (where == null)
                where = PredicateBuilder.True<UserTreatmentPlanPermission>();
            return entities.UserTreatmentPlanPermissions.Where(where).OrderByDescending(t => t.time_created).ToPagedList(pageIndex, pageSize);
        }

        public IList<UserTreatmentPlanPermission> GetTreatmentPlanPermissionList(int treatmentPlanID, int pageIndex, int pageSize)
        {
            return GetTreatmentPlanPermissionList(t => t.TreatmentPlanID == treatmentPlanID, pageIndex, pageSize);
        }

        public bool SetTreatmentPlanPermission(List<UserTreatmentPlanPermission> tmpPermissionList)
        {
            if (tmpPermissionList == null || tmpPermissionList.Count == 0)
                throw new ArgumentNullException("tmpPermissionList");
            int treatmentPlanID = tmpPermissionList[0].TreatmentPlanID.Value;
            TreatmentPlan treatmentPlan = entities.TreatmentPlans.FirstOrDefault(t => t.TreatmentPlanID == treatmentPlanID);
            if (treatmentPlan == null)
                throw new Exception("TreatmentPlan is not exist.");
            int patientID = treatmentPlan.PatientID.Value;
            if (patientID == 0)
                throw new Exception("error data");
            IList<UserTreatmentPlanPermission> oldFormPermissions = tmpPermissionContext.Find(up => up.TreatmentPlanID == treatmentPlanID);
            IList<UserPatientPermission> oldPatientPermissions = patientPermissonContext.Find(p => p.PatientID == patientID);
            foreach (var item in tmpPermissionList)
            {
                UserTreatmentPlanPermission permission = oldFormPermissions.FirstOrDefault(up => up.UserID == item.UserID);
                UserPatientPermission patientPermission = oldPatientPermissions.FirstOrDefault(p => p.UserID == item.UserID);

                if (permission != null)
                {
                    permission.can_read = item.can_read;
                    permission.can_write = item.can_write;
                    permission.can_download = item.can_download;
                    permission.can_remove = item.can_remove;
                    permission.last_modified = DateTime.Now;
                    permission.is_valid = true;
                    permission.last_modified_by = item.last_modified_by;
                    tmpPermissionContext.Update(permission);
                }
                else
                {
                    item.time_created = DateTime.Now;
                    item.last_modified = DateTime.Now;
                    item.is_valid = true;
                    tmpPermissionContext.Add(item);
                }
                //设置patient权限
                if (patientPermission == null)
                {
                    patientPermission = new UserPatientPermission
                    {
                        UserID = item.UserID,
                        PatientID = patientID,
                        can_read = item.can_read,
                        is_valid = true,
                        time_created = DateTime.Now,
                        last_modified = DateTime.Now,
                        last_modified_by = item.last_modified_by
                    };
                    patientPermissonContext.Add(patientPermission);
                }
                else
                {
                    //没有读的权限，或者该权限信息被禁用才需要更新
                    if (!patientPermission.can_read || !patientPermission.is_valid)
                    {
                        //form 能读，patient必须得能读
                        patientPermission.can_read = patientPermission.can_read || item.can_read;
                        patientPermission.is_valid = true;
                        patientPermission.last_modified = DateTime.Now;
                        patientPermission.last_modified_by = item.last_modified_by;
                        patientPermissonContext.Update(patientPermission);
                    }
                }
            }
            return formPermissionContext.Save() > 0;
        }
        #endregion

        #region File Permission
        public IPagedList<UserFilePermission> GetFilePermissionList(int pageIndex, int pageSize, Expression<Func<UserFilePermission, bool>> where)
        {
            if (where == null)
                where = PredicateBuilder.True<UserFilePermission>();
            int index = pageIndex;
            int totalCount;
            IList<UserFilePermission> list = filePermissionContext.FindOrderBy<DateTime?>(where, f => f.time_created, ref index, pageSize, out totalCount);
            return list.ToPagedList(index, pageSize, totalCount);
        }

        public IPagedList<UserFilePermission> GetFilePermissionList(int[] fileIDs, int pageIndex, int pageSize, Expression<Func<UserFilePermission, bool>> where)
        {
            if (where == null)
                where = PredicateBuilder.True<UserFilePermission>();
            where = where.And(PredicateBuilder.WhereIn<UserFilePermission, int>(f => f.FileID, fileIDs));
            return GetFilePermissionList(pageIndex, pageSize, where);
        }

        public UserFilePermission GetFilePermission(int userID, int fileID)
        {
            return entities.UserFilePermissions.FirstOrDefault(f => f.FileID == fileID && f.UserID == userID);
        }

        public bool SetFilePermission(List<UserFilePermission> permissionList)
        {
            if (permissionList == null || permissionList.Count == 0)
                throw new ArgumentNullException("tmpPermissionList");
            //设置权限的FileID
            List<int> fileIDs = permissionList.Select(up => up.FileID).Distinct().ToList();
            Expression<Func<File, bool>> fileWhere = PredicateBuilder.WhereIn<File, int>(f => f.FileID, fileIDs);
            Expression<Func<UserFilePermission, bool>> filePermissionWhere = PredicateBuilder.WhereIn<UserFilePermission, int>(f => f.FileID, fileIDs);
            //设置权限的File
            List<File> fileList = entities.Files.Where(fileWhere).ToList();
            List<int> patientIDs = fileList.Select(f => f.PatientID ?? 0).Distinct().ToList();

            Expression<Func<UserPatientPermission, bool>> patientPermissionWhere = PredicateBuilder.WhereIn<UserPatientPermission, int>(up => up.PatientID, patientIDs);


            IList<UserFilePermission> oldFilePermissions = filePermissionContext.Find(filePermissionWhere);
            IList<UserPatientPermission> oldPatientPermissions = patientPermissonContext.Find(patientPermissionWhere);

            foreach (var item in permissionList)
            {
                UserFilePermission permission = oldFilePermissions.FirstOrDefault(up => up.UserID == item.UserID && item.FileID == up.FileID);
                File file = fileList.FirstOrDefault(f => f.FileID == item.FileID);
                if (file == null)
                    continue;
                int patientID = file.PatientID ?? 0;
                if (patientID == 0) continue;
                UserPatientPermission patientPermission = oldPatientPermissions.FirstOrDefault(p => p.UserID == item.UserID && p.PatientID == patientID);

                if (permission != null)
                {
                    permission.can_read = item.can_read;
                    permission.can_write = item.can_write;
                    permission.can_download = item.can_download;
                    permission.can_remove = item.can_remove;
                    permission.last_modified = DateTime.Now;
                    permission.is_valid = true;
                    permission.last_modified_by = item.last_modified_by;
                    filePermissionContext.Update(permission);
                }
                else
                {
                    item.time_created = DateTime.Now;
                    item.last_modified = DateTime.Now;
                    item.is_valid = true;
                    filePermissionContext.Add(item);
                }
                //设置patient权限
                if (patientPermission == null)
                {
                    patientPermission = new UserPatientPermission
                    {
                        UserID = item.UserID,
                        PatientID = patientID,
                        can_read = item.can_read,
                        is_valid = true,
                        time_created = DateTime.Now,
                        last_modified = DateTime.Now,
                        last_modified_by = item.last_modified_by
                    };
                    patientPermissonContext.Add(patientPermission);
                }
                else
                {
                    //没有读的权限，或者该权限信息被禁用才需要更新
                    if (!patientPermission.can_read || !patientPermission.is_valid)
                    {
                        //file 能读，patient必须得能读
                        patientPermission.can_read = patientPermission.can_read || item.can_read;
                        patientPermission.is_valid = true;
                        patientPermission.last_modified = DateTime.Now;
                        patientPermission.last_modified_by = item.last_modified_by;
                        patientPermissonContext.Update(patientPermission);
                    }
                }
            }
            return formPermissionContext.Save() > 0;
        }
        #endregion





    }
}
