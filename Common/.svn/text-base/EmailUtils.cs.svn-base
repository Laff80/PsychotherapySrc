using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.Common
{
    public class EmailUtils
    {
        private const Int32 port = 587;
        private const string host = "smtp.gmail.com";

        private string temail = "";     // 收件人地址      
        private string bcc = "";        // 抄送人地址
        private string esubject = "";   // 邮件主题      
        private string ebody = "";      // 邮件内容  
        private string femail = "insour.mars@gmail.com";// 发送人地址   
        private string fpassword = "ensoftdev";         // 发件人邮箱密码
        private string truename = "veragen";          // 发件人真实姓名

        

        // 无参数构造方法
        public EmailUtils()
        {
        }

        // 带参数构造方法
        public EmailUtils(string temail, string bcc, string esubject, string ebody, string femail, string fpassword,string truename)
        {
            this.temail = temail;
            this.bcc = bcc;
            this.esubject = esubject;
            this.ebody = ebody;
            this.femail = femail;
            this.fpassword = fpassword;
            this.truename = truename;
        }

        // 析构函数
        ~EmailUtils()
        {
        }

        /// <summary>
        /// 外部调用该方法发送邮件
        /// </summary>
        /// <returns></returns>
        public bool doSendEmail()
        {
            // 处理邮件发送
            System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
            msg.To.Add(temail);     // 收件人
            msg.CC.Add(bcc);        // 抄送人

            // 参数:发件人地址,姓名,编码方式
            msg.From = new System.Net.Mail.MailAddress(femail, truename, System.Text.Encoding.UTF8);
            msg.Subject = esubject;                             // 主题
            msg.SubjectEncoding = System.Text.Encoding.UTF8;    // 主题编码
            msg.Body = ebody;                                   // 内容
            msg.BodyEncoding = System.Text.Encoding.UTF8;       // 内容编码
            msg.IsBodyHtml = true;                              // 是否是HTML邮件
            msg.Priority = System.Net.Mail.MailPriority.High;   // 邮件的优先级为高

            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient();
            // 参数:注册的邮箱地址和密码
            client.Credentials = new System.Net.NetworkCredential(femail, fpassword);
            client.Port = port;                   // Gmail使用的端口
            client.Host = host;                   // 服务器
            client.EnableSsl = true;
            System.Object userState = msg;

            // 发送邮件,并获取异常
            try
            {
                // 邮件发送成功
                client.SendAsync(msg, userState);
                return true;
            }
            catch (Exception e)
            {
                e.ToString();
                // 邮件发送失败
                return false;
            }
        }




        // 收件人地址
        public string Temail
        {
            get { return temail; }
            set { temail = value; }
        }
        // 抄送人地址
        public string Bcc
        {
            get { return bcc; }
            set { bcc = value; }
        }
        // 邮件主题
        public string Esubject
        {
            get { return esubject; }
            set { esubject = value; }
        }
        // 邮件内容
        public string Ebody
        {
            get { return ebody; }
            set { ebody = value; }
        }
        // 发送人地址
        public string Femail
        {
            get { return femail; }
            set { femail = value; }
        }
        // 发件人邮箱密码
        public string Fpassword
        {
            get { return fpassword; }
            set { fpassword = value; }
        }

        // 发件人真实姓名
        public string Truename
        {
            get { return truename; }
            set { truename = value; }
        }
    }
}
