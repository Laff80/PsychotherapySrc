using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Repository;
using Insourcia.Psychotherapy.Model;

namespace Insourcia.Psychotherapy.Bll
{
   public  class InitDataBLL
    {
       public static bool Init()
       {
           using (PsychotherapyEntities entities=new PsychotherapyEntities())
           {
               IRepository<User> repository = new Repository<User>(entities);

               string strSql = @"update [TreatmentPlan] set [Status] = 'Send for approval' where [Status] = 'Pending for approval';
                                      update [ProcessGuide] set [Title] = 'Are Symptoms of substance use or abuse observed or reported?' where [ProcessGuideID] = 1;
                                      update [ProcessGuide] set [Title] = 'Are Symptoms such as delusions, hallucniations and disorganized thoughts present?' where [ProcessGuideID] = 2;
                                      update [ProcessGuide] set [Title] = 'Are Symptoms such assignificant anxiety, fear, increased arousal or avoidance present?' where [ProcessGuideID] = 3;
                                      update [ProcessGuide] set [Title] = 'Are Symptoms such as depression, elevated, expansive or irritable mood present?' where [ProcessGuideID] = 4;
                                      update [ProcessGuide] set [Title] = 'Are Symptoms consistent with an impulse control disorder?' where [ProcessGuideID] = 7;
                                      SET IDENTITY_INSERT [Cluster] ON
                                      INSERT [Cluster] ([ClusterID], [Title], [ParientID], [GlanceSummaryAction], [GuideLineAction], [ContinueAction], [LastModifiedTime], [IsValid], [CreateTime]) VALUES (55, N'Specific Phobia', 3, N'0', N'0', N'', NULL, 1, NULL);
                                      INSERT [Cluster] ([ClusterID], [Title], [ParientID], [GlanceSummaryAction], [GuideLineAction], [ContinueAction], [LastModifiedTime], [IsValid], [CreateTime]) VALUES (56, N'Social Anxiety Disorder', 3, N'0', N'0', N'', NULL, 1, NULL);
                                      SET IDENTITY_INSERT [Cluster] OFF
                                      update [ProcessGuide] set [YesID] = 'cluster_55' where [ProcessGuideID] = 73;
                                      update [ProcessGuide] set [YesID] = 'cluster_56' where [ProcessGuideID] = 75;";
                                     
//               string strSql = @"UPDATE [ProcessGuide] SET [Title] = 'Are symptoms such as delusions, hallucinations, and disorganized thoughts present?' WHERE [ProcessGuideID]=2; 
//                                      UPDATE [ProcessGuide] SET [Title] = 'Are symptoms such as significant anxiety, fear, increased arousal or avoidance present?' WHERE [ProcessGuideID]=3; 
//                                     UPDATE [ProcessGuide] SET [Title] = 'Go to Substance Use Disorder Cluster.' WHERE [ProcessGuideID]=53;";
               return repository.ExecuteStoreCommand(strSql, null) > 0;

           }
       }
    }
}
