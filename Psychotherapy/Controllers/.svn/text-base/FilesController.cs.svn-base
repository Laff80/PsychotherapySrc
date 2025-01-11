using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Common;
using Psychotherapy.Utility;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Common.Web;
using System.IO;
using Psychotherapy.Models;
using Insourcia.Psychotherapy.Utility.Security;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.Psychotherapy.Utility;
using System.Text;
using ModelFile = Insourcia.Psychotherapy.Model.File;
using LinqKit;
using Insourcia.WebControls.MvcPaging;
using Resources;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class FilesController : BaseController
    {

        public ActionResult Upload()
        {
            int patientID = HttpRequestUtils.QueryInt("patientID", 0);
            bool read, download, write, isOwner;
            Permission.PatientPermission(UserID, patientID, out read, out download, out write,out isOwner);
            if (!write)
                return PartialView("NoAuthorize");
            return View();
        }

        /// <summary>
        /// 上传文件
        /// </summary>
        /// <param name="fomrs"></param>
        /// <param name="file"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Upload(FormCollection fomrs, Insourcia.Psychotherapy.Model.File file)
        {
            int patientID = Converter.ToInt(Request.QueryString["patientID"], 0);
            if (patientID == 0) return Content("{Success:false,Msg:'Parameters is invalid.'}");
            if (Request.Files["FileUpload"] == null) return Content("{Success:false,Msg:'Upload file is invalid.'}");

            bool read, download, write, isOwner;
            Permission.PatientPermission(UserID, patientID, out read, out download, out write,out isOwner);
            if (!write)
                return Content("{Success:false,Msg:'Sorry,You may not have permission to perform this operation.'}");
            try
            {
                FilesBll fileBll = new FilesBll();
                string path = AppDomain.CurrentDomain.BaseDirectory + "ClientFiles\\" + patientID + "\\Scanned Form";
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }
                string FileName = Path.GetFileName(Request.Files["FileUpload"].FileName);
                string GetFex = FileName.Substring(FileName.LastIndexOf("."));
                string GetMIME = Request.Files["FileUpload"].ContentType;
                int GetSize = Request.Files["FileUpload"].ContentLength;

                //System.Text.RegularExpressions.Regex reg = new System.Text.RegularExpressions.Regex(".JPG|.jpg|.JPEG|.jpeg|.GIF|.gif|.BMP|.bmp|.PNG|.png|.TXT|.txt|.PDF|.pdf|");
                System.Text.RegularExpressions.Regex reg = new System.Text.RegularExpressions.Regex("image/bmp|image/png|image/gif|image/jpeg|image/jpg|image/x-png|image/pjpeg|text/plain|application/msword|application/vnd.ms-powerpoint|application/pdf|application/vnd.ms-excel");
                if (!reg.IsMatch(GetMIME)) return Content("{Success:false,Msg:'File format error.'}");

                file.FileName = file.FileName != FileName ? file.FileName : FileName;
                file.PatientID = patientID;
                file.UserID = UserID;
                file.Type = GetFex;
                file.Size = GetSize;
                file.MIME = GetMIME;
                file.Path = "ClientFiles\\" + patientID + "\\Scanned Form\\" + file.FileName + file.Type;
                file.TimeCreated = DateTime.Now;
                file.IsValid = true;
                if (fileBll.Add(file))
                {
                    Request.Files["FileUpload"].SaveAs(Path.Combine(path, file.FileName + GetFex));
                    return Content("{Success:true,Msg:'" + file.FileName + " file already successful uploaded'}");

                }
                return Content("{Success:false,Msg:'Upload file fail.'}");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Files", "Upload", ex);
                return Content("{Success:false,Msg:'" + ex.Message + "'}");
            }
        }

        /// <summary>
        /// 下载文件
        /// </summary>
        /// <returns></returns>
        public ActionResult targetfile(int id)
        {
            try
            {
                int patientID = HttpRequestUtils.QueryInt("patientID", 0);
                bool read, download, write,isOwner;
                Permission.PatientPermission(UserID, patientID, out read, out download, out write,out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                FilesBll fileBll = new FilesBll();
                Insourcia.Psychotherapy.Model.File file = fileBll.GetModelByKey(id, "FileID");
               
                string FullName = file.FileName + file.Type;
                string Addr = AppDomain.CurrentDomain.BaseDirectory + file.Path + "\\" + FullName;
                return File(new FileStream(Addr, FileMode.Open), file.MIME, FullName);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Files", "targetfile", ex);
                return File(Encoding.UTF8.GetBytes("Sorry, the processing of your request error."),"text/plain");
            }
        }

        public ActionResult download(int fileID,string filePath)
        {
            try
            {
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                bool read, download, write;
                Permission.FilePermission(UserID, fileID, out read, out download, out write);
                if (!download)
                    return PartialView("NoAuthorize");
                string fullFilePath = AppDomain.CurrentDomain.BaseDirectory + filePath;
                string outputFileName = Path.GetFileName(fullFilePath);
                if (System.IO.File.Exists(fullFilePath))
                {
                    return File(new FileStream(fullFilePath, FileMode.Open), "application/octet-stream", outputFileName);
                }
               return File(Encoding.UTF8.GetBytes("Sorry, the processing of your request error."), "text/plain");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Files", "download", ex);
                return File(Encoding.UTF8.GetBytes("Sorry, the processing of your request error."), "text/plain");
            }
        }

        #region Share
        public ActionResult ShareFiles(int? id,FormCollection forms)
        {
            try
            {
                int patientID=HttpRequestUtils.FormInt("patientID",0);
                if(patientID==0)
                    return   PartialView("Error");
                bool read, write, download, isOwner;
                Permission.PatientPermission(UserID, patientID, out read, out download, out write, out isOwner);
                if(!isOwner)
                    return Content("Sorry,You may not have permission to perform this operation.");
                int[] fileIDs = HttpRequestUtils.FormIntArray("chkbFile");
                if (fileIDs == null || fileIDs.Length == 0)
                    return Content("please select one or more item.");

                FilesBll fileBll=new FilesBll();
               IList<ModelFile> files=fileBll.GetFiles(PredicateBuilder.WhereIn<ModelFile,int>(f=>f.FileID,fileIDs));
                if(files==null||files.Count==0)
                    return Content("The  selected files are not exist or deleted.");
                int fileUserID=files[0].UserID??0;

               UserBll userBll = new UserBll();
               IList<User> userList = userBll.GetUsers(u => u.UserID != fileUserID);
               PermissionBll permissionBll = new PermissionBll();
               IPagedList<UserFilePermission> filePermissions = permissionBll.GetFilePermissionList(fileIDs, id ?? 0, 12, null);
               ViewData["PatientID"] = patientID;
               ViewData["slFile"] = files.ToSelectList<ModelFile>(f => f.FileName, f => f.FileID.ToString());
               ViewData["slUser"] = userList.ToSelectList<User>(u => u.FirstName + " " + u.LastName, u => u.UserID.ToString());

               return View(filePermissions);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Files", "ShareFiles", ex);
                return Content(ex.Message);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="forms"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult AddFilePermission(FormCollection forms)
        {
            try
            {
                int patientID=HttpRequestUtils.FormInt("hdPatientID",0);
                if(patientID==0)
                    return PartialView("Error");
                bool pRead,pDownload,pWrite,isOwner;
                Permission.PatientPermission(UserID, patientID, out pRead, out pDownload, out pWrite, out isOwner);
                if(!isOwner)
                    return Content("Sorry,You may not have permission to perform this operation.");
                int[] userIDs =HttpRequestUtils.FormIntArray("hdUserID");
                int[] fileIDs = HttpRequestUtils.FormIntArray("hdFileID");
                bool[] reads = HttpRequestUtils.FormBoolArray("canRead");
                bool[] writes = HttpRequestUtils.FormBoolArray("canWrite");
                bool[] downloads = HttpRequestUtils.FormBoolArray("canDownload");

                List<UserFilePermission> permissionList = new List<UserFilePermission>();
                // 获取参数的值
                for (int i = 0; i < userIDs.Length; i++)
                {
                    // 获取提交过来的值
                    int uid = userIDs[i];
                    int fileID =fileIDs[i];
                    bool write =writes[i];
                    bool download = downloads[i] || write;//能写就能下载=
                    bool read = reads[i] || download;
                    if (uid == 0 || fileID ==0) continue;
                    UserFilePermission filePermission = new UserFilePermission();
                    filePermission.UserID = uid;
                    filePermission.FileID = fileID;
                    filePermission.can_read = read;
                    filePermission.can_write = write;
                    filePermission.can_download = download;
                    permissionList.Add(filePermission);
                }
                PermissionBll permissionBll = new PermissionBll();
                if (permissionBll.SetFilePermission(permissionList))
                {
                    return JsonModel.CreateJsonResult(true, "");
                }
                else
                {
                    return JsonModel.CreateJsonResult(false,Resource.SettingPermissionFailed);
                }

            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Files", "AddFilePermission", ex);
                return JsonModel.CreateJsonResult(false,ex.Message);
            } 
        }
        #endregion

        public ActionResult OpenPdf(string filePath)
        {
            try
            {
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                bool read, download, write,isOwner;
                Permission.PatientPermission(UserID, patientID, out read, out download, out write,out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                string path = AppDomain.CurrentDomain.BaseDirectory + filePath;
                string outputFileName = Path.GetFileName(filePath);
                if (System.IO.File.Exists(path))
                {
                    HttpContext.Response.AddHeader("content-disposition", "inline; filename=" + outputFileName);
                    return File(new FileStream(path, FileMode.Open), "appliction/pdf");
                }
                return PartialView("Error");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Files", "OpenPdf", ex);
                return PartialView("Error");
            }
        }
    }
}
