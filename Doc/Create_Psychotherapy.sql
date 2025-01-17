USE [Psychotherapy]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserType](
	[UserTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[can_create_object] [bit] NOT NULL,
	[can_invite_participants] [bit] NOT NULL,
	[can_modified_object] [bit] NOT NULL,
	[can_remove_object] [bit] NOT NULL,
	[can_add_users] [bit] NOT NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
 CONSTRAINT [PK_USERTYPE] PRIMARY KEY CLUSTERED 
(
	[UserTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Strategy]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Strategy](
	[StrategyID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](2500) NULL,
	[CreateTime] [datetime] NULL,
	[LastModifiedTime] [datetime] NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_STRATEGY] PRIMARY KEY CLUSTERED 
(
	[StrategyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form](
	[FormID] [int] IDENTITY(1,1) NOT NULL,
	[FormName] [varchar](100) NULL,
	[TemplatePath] [varchar](500) NULL,
 CONSTRAINT [PK_FORM] PRIMARY KEY CLUSTERED 
(
	[FormID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Files]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Files](
	[FileID] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [varchar](255) NULL,
	[PatientID] [int] NULL,
	[Path] [varchar](500) NULL,
	[Description] [varchar](max) NULL,
	[Size] [int] NULL,
	[Type] [varchar](10) NULL,
	[MIME] [varchar](50) NULL,
	[UserID] [int] NULL,
	[TimeCreated] [datetime] NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_FILES] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Department]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
	[ManagerUserID] [int] NULL,
	[TimeCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Objective]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Objective](
	[ObjectiveID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [text] NULL,
	[CreateTime] [datetime] NULL,
	[IsValid] [bit] NULL,
	[StartValue] [varchar](10) NULL,
	[EndValue] [varchar](10) NULL,
	[Measure] [varchar](10) NULL,
	[Space] [numeric](10, 2) NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_OBJECTIVE] PRIMARY KEY CLUSTERED 
(
	[ObjectiveID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LongTermGoal]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LongTermGoal](
	[LongTermGoalID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](1000) NULL,
	[CreateTime] [datetime] NULL,
	[IsValid] [bit] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_LONGTERMGOAL] PRIMARY KEY CLUSTERED 
(
	[LongTermGoalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogRecords]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogRecords](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Thread] [varchar](100) NULL,
	[Level] [varchar](100) NULL,
	[Logger] [varchar](200) NULL,
	[Message] [varchar](max) NULL,
	[Operand] [varchar](300) NULL,
	[IP] [varchar](20) NULL,
	[Exception] [varchar](max) NULL,
	[UserID] [varchar](20) NULL,
	[UserName] [varchar](50) NULL,
	[LogType] [int] NULL,
	[ActionType] [int] NULL,
 CONSTRAINT [PK_LOGRECORDS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志线程' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'Thread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'Level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志记录器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'Logger'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'Message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作对象' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'Operand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异常信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'Exception'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Action类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords', @level2type=N'COLUMN',@level2name=N'ActionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LogRecords'
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_GROUPS] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GlanceAndGuidelines]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GlanceAndGuidelines](
	[GlanceAndGuidelineID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](1000) NOT NULL,
	[ClusterParentID] [int] NULL,
	[Path] [varchar](1000) NULL,
	[Type] [int] NOT NULL,
	[ActionType] [int] NOT NULL,
	[CreateTime] [datetime] NULL,
	[LastModifiedTime] [datetime] NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_GlanceAndGuidelines] PRIMARY KEY CLUSTERED 
(
	[GlanceAndGuidelineID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[ParentCategoryID] [int] NOT NULL,
	[OwnedBy] [int] NOT NULL,
	[TimeCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[LastModifiedBy] [int] NOT NULL,
	[IsValid] [bit] NOT NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccountPlan]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccountPlan](
	[AccountPlanID] [int] IDENTITY(1,1) NOT NULL,
	[PlanName] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[Price] [numeric](9, 2) NOT NULL,
	[NumUsers] [int] NOT NULL,
	[Quota] [int] NOT NULL,
	[Expired] [smallint] NOT NULL,
	[TimeCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[LastModifiedBy] [int] NOT NULL,
	[IsValid] [bit] NOT NULL,
 CONSTRAINT [PK_ACCOUNTPLAN] PRIMARY KEY CLUSTERED 
(
	[AccountPlanID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cluster]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cluster](
	[ClusterID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](1000) NULL,
	[ParientID] [int] NULL,
	[GlanceSummaryAction] [varchar](255) NULL,
	[GuideLineAction] [varchar](255) NULL,
	[ContinueAction] [varchar](255) NULL,
	[LastModifiedTime] [datetime] NULL,
	[IsValid] [bit] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_CLUSTER] PRIMARY KEY CLUSTERED 
(
	[ClusterID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Site]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Site](
	[SiteID] [int] IDENTITY(1,1) NOT NULL,
	[SiteName] [varchar](200) NOT NULL,
	[Description] [varchar](500) NULL,
	[TimeCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_SITE] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProcessGuide]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProcessGuide](
	[ProcessGuideID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](500) NULL,
	[YesID] [varchar](20) NULL,
	[NoID] [varchar](20) NULL,
	[IsValid] [bit] NULL,
	[Level] [varchar](20) NULL,
	[LastModified] [datetime] NULL,
	[JumpAction] [varchar](255) NULL,
	[TimeCreated] [datetime] NULL,
 CONSTRAINT [PK_PROCESSGUIDE] PRIMARY KEY CLUSTERED 
(
	[ProcessGuideID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Symptom]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Symptom](
	[SymptomID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](1000) NULL,
	[IsValid] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[LastModifiedTime] [datetime] NULL,
 CONSTRAINT [PK_SYMPTOM] PRIMARY KEY CLUSTERED 
(
	[SymptomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemFunction]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemFunction](
	[FunctionID] [int] IDENTITY(1,1) NOT NULL,
	[FunctionName] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
	[FunctionUrl] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SYSTEMFUNCTION] PRIMARY KEY CLUSTERED 
(
	[FunctionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPatientPermission]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserPatientPermission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PatientID] [int] NOT NULL,
	[can_read] [bit] NOT NULL,
	[can_write] [bit] NOT NULL,
	[can_remove] [bit] NOT NULL,
	[can_download] [bit] NOT NULL,
	[can_annotate] [bit] NOT NULL,
	[can_upload] [bit] NOT NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
	[FormData] [varchar](10) NOT NULL,
	[TreatmentPlanData] [varchar](10) NOT NULL,
	[ScannedFormData] [varchar](10) NOT NULL,
	[ChartData] [varchar](10) NOT NULL,
 CONSTRAINT [PK_USERPATIENTPERMISSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeNumber] [varchar](200) NULL,
	[FirstName] [varchar](100) NOT NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[PrimaryEmail] [varchar](200) NOT NULL,
	[Profession] [int] NULL,
	[UserLocation] [varchar](200) NULL,
	[SecretQuestion] [varchar](200) NOT NULL,
	[SecretAnswer] [varchar](200) NOT NULL,
	[IsActive] [smallint] NOT NULL,
	[UserTypeID] [int] NULL,
	[DefaultSiteID] [int] NULL,
	[IsValid] [bit] NOT NULL,
	[TimeCreated] [datetime] NOT NULL,
	[LastModified] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SymptomLongTermGoal]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SymptomLongTermGoal](
	[SymptomID] [int] NOT NULL,
	[LongTermGoalID] [int] NOT NULL,
 CONSTRAINT [PK_SYMPTOMLONGTERMGOAL] PRIMARY KEY CLUSTERED 
(
	[SymptomID] ASC,
	[LongTermGoalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StrategyObjectives]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StrategyObjectives](
	[ObjectiveID] [int] NOT NULL,
	[StrategyID] [int] NOT NULL,
 CONSTRAINT [PK_STRATEGYOBJECTIVES] PRIMARY KEY CLUSTERED 
(
	[ObjectiveID] ASC,
	[StrategyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjectiveLongTermGoal]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjectiveLongTermGoal](
	[LongTermGoalID] [int] NOT NULL,
	[ObjectiveID] [int] NOT NULL,
 CONSTRAINT [PK_OBJECTIVELONGTERMGOAL] PRIMARY KEY CLUSTERED 
(
	[LongTermGoalID] ASC,
	[ObjectiveID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryForms]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryForms](
	[CategoryID] [int] NOT NULL,
	[FormID] [int] NOT NULL,
 CONSTRAINT [PK_CATEGORYFORMS] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC,
	[FormID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunctionInGroups]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunctionInGroups](
	[GroupID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL,
 CONSTRAINT [PK_FUNCTIONINGROUPS] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormData]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormData](
	[FormDataID] [int] IDENTITY(1,1) NOT NULL,
	[FormID] [int] NOT NULL,
	[Content] [varchar](max) NULL,
	[PrintFormName] [varchar](500) NULL,
	[PatientID] [int] NULL,
	[UserID] [int] NULL,
	[TimeCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[IsValid] [bit] NULL,
	[LastModifiedBy] [int] NULL,
 CONSTRAINT [PK_FORMDATA] PRIMARY KEY CLUSTERED 
(
	[FormDataID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClusterSymptoms]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClusterSymptoms](
	[ClusterID] [int] NOT NULL,
	[SymptomID] [int] NOT NULL,
 CONSTRAINT [PK_CLUSTERSYMPTOMS] PRIMARY KEY CLUSTERED 
(
	[ClusterID] ASC,
	[SymptomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClusterGlanceGuidelineItems]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClusterGlanceGuidelineItems](
	[ClusterID] [int] NOT NULL,
	[GlanceAndGuidelineID] [int] NOT NULL,
 CONSTRAINT [PK_ClusterGlanceGuidelineItems] PRIMARY KEY CLUSTERED 
(
	[ClusterID] ASC,
	[GlanceAndGuidelineID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountPlanID] [int] NOT NULL,
	[main_account_holder] [int] NOT NULL,
	[signedup_date] [datetime] NULL,
	[renewal_date] [datetime] NULL,
	[grace_period_in_days] [int] NOT NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
 CONSTRAINT [PK_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserUserAssociation]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserUserAssociation](
	[UserID] [int] NOT NULL,
	[TargetUserID] [int] NOT NULL,
 CONSTRAINT [PK_USERUSERASSOCIATION] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[TargetUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteDepartmentUsers]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteDepartmentUsers](
	[SiteID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_SITEDEPARTMENTUSERS] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC,
	[DepartmentID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunctionInUsers]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunctionInUsers](
	[UserID] [int] NOT NULL,
	[FunctionID] [int] NOT NULL,
 CONSTRAINT [PK_FUNCTIONINUSERS] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[FunctionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Address1] [varchar](200) NULL,
	[Address2] [varchar](200) NOT NULL,
	[City] [varchar](100) NULL,
	[state_province] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[post_code] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[home_phone] [varchar](20) NULL,
	[biz_phone] [varchar](20) NULL,
	[mobile_phone] [varchar](20) NULL,
	[fax] [varchar](20) NULL,
	[alt_phone1] [varchar](20) NULL,
	[alt_phone2] [varchar](20) NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
 CONSTRAINT [PK_CONTACT] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccountUserAssociation]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountUserAssociation](
	[AccountID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_ACCOUNTUSERASSOCIATION] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[GRID] [varchar](50) NULL,
	[AdmissionDay] [varchar](50) NULL,
	[BirthDay] [varchar](20) NULL,
	[Ethnicity] [varchar](50) NULL,
	[Gender] [varchar](10) NULL,
	[MaritalStatus] [varchar](50) NULL,
	[LivingSituation] [varchar](250) NULL,
	[ReferralSource] [varchar](100) NULL,
	[Relationship] [varchar](100) NULL,
	[LegalGuardian] [varchar](100) NULL,
	[Address] [varchar](250) NULL,
	[Treatment] [varchar](200) NULL,
	[Household] [varchar](50) NULL,
	[Age] [int] NULL,
	[SymptomsInfo] [varchar](max) NULL,
	[SiteID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[TimeCreated] [datetime] NULL,
	[LastModified] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_PATIENT] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPayment]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserPayment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[AmountInvoiced] [float] NOT NULL,
	[AmountPaid] [float] NULL,
	[AmountLess] [float] NOT NULL,
	[PaymentDate] [datetime] NULL,
	[billing_contact_id] [int] NOT NULL,
	[BillingInfo] [varchar](50) NOT NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
 CONSTRAINT [PK_USERPAYMENT] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInGroups]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInGroups](
	[GroupID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_USERINGROUPS] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFormDataPermission]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFormDataPermission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[FormDataID] [int] NOT NULL,
	[can_read] [bit] NOT NULL,
	[can_write] [bit] NOT NULL,
	[can_remove] [bit] NOT NULL,
	[can_download] [bit] NOT NULL,
	[can_annotate] [bit] NOT NULL,
	[can_upload] [bit] NOT NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
	[PatientID] [int] NOT NULL,
 CONSTRAINT [PK_USERFORMDATAPERMISSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFilePermission]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFilePermission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[FileID] [int] NOT NULL,
	[can_read] [bit] NOT NULL,
	[can_write] [bit] NOT NULL,
	[can_remove] [bit] NOT NULL,
	[can_download] [bit] NOT NULL,
	[can_annotate] [bit] NOT NULL,
	[can_upload] [bit] NOT NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
 CONSTRAINT [PK_USERFILEPERMISSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCategoryPermission]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCategoryPermission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[can_read] [bit] NOT NULL,
	[can_write] [bit] NOT NULL,
	[can_remove] [bit] NOT NULL,
	[can_download] [bit] NOT NULL,
	[can_annotate] [bit] NOT NULL,
	[can_upload] [bit] NOT NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
 CONSTRAINT [PK_USERCATEGORYPERMISSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreatmentPlan]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TreatmentPlan](
	[TreatmentPlanID] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [int] NULL,
	[ObjectiveAnswer] [text] NULL,
	[Comment] [varchar](400) NULL,
	[CreateTime] [datetime] NULL,
	[LastModifiedTime] [datetime] NULL,
	[IsValid] [bit] NULL,
	[Status] [varchar](100) NULL,
	[ClusterID] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_TREATMENTPLAN] PRIMARY KEY CLUSTERED 
(
	[TreatmentPlanID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'治疗计划' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TreatmentPlan'
GO
/****** Object:  Table [dbo].[UserTreatmentPlanPermission]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTreatmentPlanPermission](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TreatmentPlanID] [int] NULL,
	[UserID] [int] NOT NULL,
	[can_read] [bit] NOT NULL,
	[can_write] [bit] NOT NULL,
	[can_remove] [bit] NOT NULL,
	[can_download] [bit] NOT NULL,
	[can_annotate] [bit] NOT NULL,
	[can_upload] [bit] NOT NULL,
	[time_created] [datetime] NULL,
	[last_modified] [datetime] NULL,
	[last_modified_by] [int] NOT NULL,
	[is_valid] [bit] NOT NULL,
 CONSTRAINT [PK_USERTREATMENTPLANPERMISSION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreatmentPlanItems]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TreatmentPlanItems](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[TreatmentPlanID] [int] NULL,
	[SymptomID] [int] NULL,
	[LongTermGoalID] [int] NULL,
	[ObjectiveID] [int] NULL,
	[StrategyID] [int] NULL,
	[CreateTime] [datetime] NULL,
	[LastModifiedTime] [datetime] NULL,
	[IsValid] [bit] NULL,
	[Count] [varchar](100) NULL,
	[Measure] [varchar](100) NULL,
 CONSTRAINT [PK_TREATMENTPLANITEMS] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TreatmentPlanItems', @level2type=N'COLUMN',@level2name=N'ItemID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'诊断计划详细项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TreatmentPlanItems'
GO
/****** Object:  Table [dbo].[ClinicalService]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClinicalService](
	[TreatmentPlanID] [int] NULL,
	[ClinicalServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Mood] [varchar](255) NULL,
	[Affect] [varchar](255) NULL,
	[Participat] [varchar](255) NULL,
	[ThoughtProcesses] [varchar](255) NULL,
	[Speech] [varchar](255) NULL,
	[Perceptions] [varchar](255) NULL,
	[Sleep] [varchar](255) NULL,
	[CreateTime] [datetime] NULL,
	[LastModifiedTime] [datetime] NULL,
	[IsValid] [bit] NULL,
	[Prof] [varchar](255) NULL,
	[ProfName] [varchar](255) NULL,
	[CostCenter] [varchar](255) NULL,
	[GRID] [varchar](255) NULL,
	[ClientName] [varchar](255) NULL,
	[ScheduledService] [varchar](255) NULL,
	[Comments] [text] NULL,
 CONSTRAINT [PK_CLINICALSERVICE] PRIMARY KEY CLUSTERED 
(
	[ClinicalServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClinicalServiceNoteRate]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClinicalServiceNoteRate](
	[clinicalServiceNoteRateId] [int] IDENTITY(1,1) NOT NULL,
	[symptomId] [int] NULL,
	[clientRate] [varchar](255) NULL,
	[therapistRate] [varchar](255) NULL,
	[ClinicalServiceID] [int] NULL,
	[TreatmentPlanID] [int] NULL,
	[isValid] [bit] NULL,
	[createTime] [datetime] NULL,
 CONSTRAINT [PK_CLINICALSERVICENOTERATE] PRIMARY KEY CLUSTERED 
(
	[clinicalServiceNoteRateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClinicalServiceDiagnosis]    Script Date: 05/11/2011 15:13:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClinicalServiceDiagnosis](
	[ClinicalServiceDiagnosisID] [int] IDENTITY(1,1) NOT NULL,
	[SymptomID] [int] NULL,
	[ClinicalServiceID] [int] NULL,
	[TreatmentPlanID] [int] NULL,
	[LongTermGoalID] [int] NULL,
	[ObjectiveID] [int] NULL,
	[StrategyID] [int] NULL,
	[IsValid] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[LastModifiedTime] [datetime] NULL,
	[ObjectiveIsComplete] [bit] NULL,
	[ObjectiveIsWorkedOn] [bit] NULL,
	[StrategyIsWorkdeOn] [bit] NULL,
 CONSTRAINT [PK_CLINICALSERVICEDIAGNOSIS] PRIMARY KEY CLUSTERED 
(
	[ClinicalServiceDiagnosisID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF__Account__Account__330B79E8]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__Account__330B79E8]  DEFAULT ((0)) FOR [AccountPlanID]
GO
/****** Object:  Default [DF__Account__main_ac__33FF9E21]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__main_ac__33FF9E21]  DEFAULT ((0)) FOR [main_account_holder]
GO
/****** Object:  Default [DF__Account__grace_p__34F3C25A]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__grace_p__34F3C25A]  DEFAULT ((0)) FOR [grace_period_in_days]
GO
/****** Object:  Default [DF__Account__last_mo__35E7E693]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__last_mo__35E7E693]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__Account__is_vali__36DC0ACC]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__is_vali__36DC0ACC]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF__AccountPl__Price__0FC23DAB]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[AccountPlan] ADD  CONSTRAINT [DF__AccountPl__Price__0FC23DAB]  DEFAULT ((0)) FOR [Price]
GO
/****** Object:  Default [DF__AccountPl__NumUs__10B661E4]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[AccountPlan] ADD  CONSTRAINT [DF__AccountPl__NumUs__10B661E4]  DEFAULT ((0)) FOR [NumUsers]
GO
/****** Object:  Default [DF__AccountPl__Quota__11AA861D]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[AccountPlan] ADD  CONSTRAINT [DF__AccountPl__Quota__11AA861D]  DEFAULT ((0)) FOR [Quota]
GO
/****** Object:  Default [DF__AccountPl__Expir__129EAA56]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[AccountPlan] ADD  CONSTRAINT [DF__AccountPl__Expir__129EAA56]  DEFAULT ((0)) FOR [Expired]
GO
/****** Object:  Default [DF__AccountPl__LastM__1392CE8F]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[AccountPlan] ADD  CONSTRAINT [DF__AccountPl__LastM__1392CE8F]  DEFAULT ((0)) FOR [LastModifiedBy]
GO
/****** Object:  Default [DF__AccountPl__IsVal__1486F2C8]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[AccountPlan] ADD  CONSTRAINT [DF__AccountPl__IsVal__1486F2C8]  DEFAULT ((0)) FOR [IsValid]
GO
/****** Object:  Default [DF__Category__Parent__0A096455]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__Parent__0A096455]  DEFAULT ((0)) FOR [ParentCategoryID]
GO
/****** Object:  Default [DF__Category__OwnedB__0AFD888E]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__OwnedB__0AFD888E]  DEFAULT ((0)) FOR [OwnedBy]
GO
/****** Object:  Default [DF__Category__LastMo__0BF1ACC7]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__LastMo__0BF1ACC7]  DEFAULT ((0)) FOR [LastModifiedBy]
GO
/****** Object:  Default [DF__Category__IsVali__0CE5D100]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__IsVali__0CE5D100]  DEFAULT ((0)) FOR [IsValid]
GO
/****** Object:  Default [DF__Contact__last_mo__3F7150CD]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF__Contact__last_mo__3F7150CD]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__Contact__is_vali__40657506]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF__Contact__is_vali__40657506]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF_GlanceAndGuidelines_ActionType]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[GlanceAndGuidelines] ADD  CONSTRAINT [DF_GlanceAndGuidelines_ActionType]  DEFAULT ((0)) FOR [ActionType]
GO
/****** Object:  Default [DF__SystemFun__last___20ECC9AD]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[SystemFunction] ADD  CONSTRAINT [DF__SystemFun__last___20ECC9AD]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__SystemFun__is_va__21E0EDE6]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[SystemFunction] ADD  CONSTRAINT [DF__SystemFun__is_va__21E0EDE6]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF__UserCateg__UserI__61C668D1]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__UserI__61C668D1]  DEFAULT ((0)) FOR [UserID]
GO
/****** Object:  Default [DF__UserCateg__Categ__62BA8D0A]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__Categ__62BA8D0A]  DEFAULT ((0)) FOR [CategoryID]
GO
/****** Object:  Default [DF__UserCateg__can_r__63AEB143]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__can_r__63AEB143]  DEFAULT ((0)) FOR [can_read]
GO
/****** Object:  Default [DF__UserCateg__can_w__64A2D57C]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__can_w__64A2D57C]  DEFAULT ((0)) FOR [can_write]
GO
/****** Object:  Default [DF__UserCateg__can_r__6596F9B5]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__can_r__6596F9B5]  DEFAULT ((0)) FOR [can_remove]
GO
/****** Object:  Default [DF__UserCateg__can_d__668B1DEE]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__can_d__668B1DEE]  DEFAULT ((0)) FOR [can_download]
GO
/****** Object:  Default [DF__UserCateg__can_a__677F4227]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__can_a__677F4227]  DEFAULT ((0)) FOR [can_annotate]
GO
/****** Object:  Default [DF__UserCateg__can_u__68736660]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__can_u__68736660]  DEFAULT ((0)) FOR [can_upload]
GO
/****** Object:  Default [DF__UserCateg__last___69678A99]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__last___69678A99]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__UserCateg__is_va__6A5BAED2]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission] ADD  CONSTRAINT [DF__UserCateg__is_va__6A5BAED2]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF__UserFileP__UserI__5654B625]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__UserI__5654B625]  DEFAULT ((0)) FOR [UserID]
GO
/****** Object:  Default [DF__UserFileP__FileI__5748DA5E]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__FileI__5748DA5E]  DEFAULT ((0)) FOR [FileID]
GO
/****** Object:  Default [DF__UserFileP__can_r__583CFE97]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__can_r__583CFE97]  DEFAULT ((0)) FOR [can_read]
GO
/****** Object:  Default [DF__UserFileP__can_w__593122D0]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__can_w__593122D0]  DEFAULT ((0)) FOR [can_write]
GO
/****** Object:  Default [DF__UserFileP__can_r__5A254709]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__can_r__5A254709]  DEFAULT ((0)) FOR [can_remove]
GO
/****** Object:  Default [DF__UserFileP__can_d__5B196B42]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__can_d__5B196B42]  DEFAULT ((0)) FOR [can_download]
GO
/****** Object:  Default [DF__UserFileP__can_a__5C0D8F7B]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__can_a__5C0D8F7B]  DEFAULT ((0)) FOR [can_annotate]
GO
/****** Object:  Default [DF__UserFileP__can_u__5D01B3B4]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__can_u__5D01B3B4]  DEFAULT ((0)) FOR [can_upload]
GO
/****** Object:  Default [DF__UserFileP__last___5DF5D7ED]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__last___5DF5D7ED]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__UserFileP__is_va__5EE9FC26]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission] ADD  CONSTRAINT [DF__UserFileP__is_va__5EE9FC26]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF__UserFormD__UserI__4AE30379]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__UserI__4AE30379]  DEFAULT ((0)) FOR [UserID]
GO
/****** Object:  Default [DF__UserFormD__FormD__4BD727B2]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__FormD__4BD727B2]  DEFAULT ((0)) FOR [FormDataID]
GO
/****** Object:  Default [DF__UserFormD__can_r__4CCB4BEB]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__can_r__4CCB4BEB]  DEFAULT ((0)) FOR [can_read]
GO
/****** Object:  Default [DF__UserFormD__can_w__4DBF7024]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__can_w__4DBF7024]  DEFAULT ((0)) FOR [can_write]
GO
/****** Object:  Default [DF__UserFormD__can_r__4EB3945D]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__can_r__4EB3945D]  DEFAULT ((0)) FOR [can_remove]
GO
/****** Object:  Default [DF__UserFormD__can_d__4FA7B896]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__can_d__4FA7B896]  DEFAULT ((0)) FOR [can_download]
GO
/****** Object:  Default [DF__UserFormD__can_a__509BDCCF]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__can_a__509BDCCF]  DEFAULT ((0)) FOR [can_annotate]
GO
/****** Object:  Default [DF__UserFormD__can_u__51900108]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__can_u__51900108]  DEFAULT ((0)) FOR [can_upload]
GO
/****** Object:  Default [DF__UserFormD__last___52842541]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__last___52842541]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__UserFormD__is_va__5378497A]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission] ADD  CONSTRAINT [DF__UserFormD__is_va__5378497A]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF__UserPatie__UserI__74D93D45]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__UserI__74D93D45]  DEFAULT ((0)) FOR [UserID]
GO
/****** Object:  Default [DF__UserPatie__Patie__75CD617E]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__Patie__75CD617E]  DEFAULT ((0)) FOR [PatientID]
GO
/****** Object:  Default [DF__UserPatie__can_r__76C185B7]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__can_r__76C185B7]  DEFAULT ((0)) FOR [can_read]
GO
/****** Object:  Default [DF__UserPatie__can_w__77B5A9F0]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__can_w__77B5A9F0]  DEFAULT ((0)) FOR [can_write]
GO
/****** Object:  Default [DF__UserPatie__can_r__78A9CE29]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__can_r__78A9CE29]  DEFAULT ((0)) FOR [can_remove]
GO
/****** Object:  Default [DF__UserPatie__can_d__799DF262]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__can_d__799DF262]  DEFAULT ((0)) FOR [can_download]
GO
/****** Object:  Default [DF__UserPatie__can_a__7A92169B]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__can_a__7A92169B]  DEFAULT ((0)) FOR [can_annotate]
GO
/****** Object:  Default [DF__UserPatie__can_u__7B863AD4]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__can_u__7B863AD4]  DEFAULT ((0)) FOR [can_upload]
GO
/****** Object:  Default [DF__UserPatie__last___7C7A5F0D]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__last___7C7A5F0D]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__UserPatie__is_va__7D6E8346]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF__UserPatie__is_va__7D6E8346]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF_UserPatientPermission_FormData]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF_UserPatientPermission_FormData]  DEFAULT ('0,0') FOR [FormData]
GO
/****** Object:  Default [DF_UserPatientPermission_TreatmentPlanData]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF_UserPatientPermission_TreatmentPlanData]  DEFAULT ('0,0') FOR [TreatmentPlanData]
GO
/****** Object:  Default [DF_UserPatientPermission_ScannedFormData]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF_UserPatientPermission_ScannedFormData]  DEFAULT ('0,0') FOR [ScannedFormData]
GO
/****** Object:  Default [DF_UserPatientPermission_ChartData]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPatientPermission] ADD  CONSTRAINT [DF_UserPatientPermission_ChartData]  DEFAULT ('0,0') FOR [ChartData]
GO
/****** Object:  Default [DF__UserPayme__Accou__6D381B7D]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPayment] ADD  CONSTRAINT [DF__UserPayme__Accou__6D381B7D]  DEFAULT ((0)) FOR [AccountID]
GO
/****** Object:  Default [DF__UserPayme__Amoun__6E2C3FB6]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPayment] ADD  CONSTRAINT [DF__UserPayme__Amoun__6E2C3FB6]  DEFAULT ((0)) FOR [AmountInvoiced]
GO
/****** Object:  Default [DF__UserPayme__Amoun__6F2063EF]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPayment] ADD  CONSTRAINT [DF__UserPayme__Amoun__6F2063EF]  DEFAULT ((0)) FOR [AmountLess]
GO
/****** Object:  Default [DF__UserPayme__billi__70148828]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPayment] ADD  CONSTRAINT [DF__UserPayme__billi__70148828]  DEFAULT ((0)) FOR [billing_contact_id]
GO
/****** Object:  Default [DF__UserPayme__last___7108AC61]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPayment] ADD  CONSTRAINT [DF__UserPayme__last___7108AC61]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__UserPayme__is_va__71FCD09A]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPayment] ADD  CONSTRAINT [DF__UserPayme__is_va__71FCD09A]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF__Users__IsValid__24BD5A91]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsValid__24BD5A91]  DEFAULT ((0)) FOR [IsValid]
GO
/****** Object:  Default [DF__UserTreat__UserI__581D0306]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__UserI__581D0306]  DEFAULT ((0)) FOR [UserID]
GO
/****** Object:  Default [DF__UserTreat__can_r__5911273F]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__can_r__5911273F]  DEFAULT ((0)) FOR [can_read]
GO
/****** Object:  Default [DF__UserTreat__can_w__5A054B78]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__can_w__5A054B78]  DEFAULT ((0)) FOR [can_write]
GO
/****** Object:  Default [DF__UserTreat__can_r__5AF96FB1]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__can_r__5AF96FB1]  DEFAULT ((0)) FOR [can_remove]
GO
/****** Object:  Default [DF__UserTreat__can_d__5BED93EA]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__can_d__5BED93EA]  DEFAULT ((0)) FOR [can_download]
GO
/****** Object:  Default [DF__UserTreat__can_a__5CE1B823]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__can_a__5CE1B823]  DEFAULT ((0)) FOR [can_annotate]
GO
/****** Object:  Default [DF__UserTreat__can_u__5DD5DC5C]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__can_u__5DD5DC5C]  DEFAULT ((0)) FOR [can_upload]
GO
/****** Object:  Default [DF__UserTreat__last___5ECA0095]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__last___5ECA0095]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__UserTreat__is_va__5FBE24CE]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission] ADD  CONSTRAINT [DF__UserTreat__is_va__5FBE24CE]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  Default [DF__UserType__can_cr__76026BA8]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__can_cr__76026BA8]  DEFAULT ((0)) FOR [can_create_object]
GO
/****** Object:  Default [DF__UserType__can_in__76F68FE1]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__can_in__76F68FE1]  DEFAULT ((0)) FOR [can_invite_participants]
GO
/****** Object:  Default [DF__UserType__can_mo__77EAB41A]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__can_mo__77EAB41A]  DEFAULT ((0)) FOR [can_modified_object]
GO
/****** Object:  Default [DF__UserType__can_re__78DED853]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__can_re__78DED853]  DEFAULT ((0)) FOR [can_remove_object]
GO
/****** Object:  Default [DF__UserType__can_ad__79D2FC8C]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__can_ad__79D2FC8C]  DEFAULT ((0)) FOR [can_add_users]
GO
/****** Object:  Default [DF__UserType__last_m__7AC720C5]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__last_m__7AC720C5]  DEFAULT ((0)) FOR [last_modified_by]
GO
/****** Object:  Default [DF__UserType__is_val__7BBB44FE]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__is_val__7BBB44FE]  DEFAULT ((0)) FOR [is_valid]
GO
/****** Object:  ForeignKey [FK_ACCOUNT_REFERENCE_ACCOUNTP]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_ACCOUNT_REFERENCE_ACCOUNTP] FOREIGN KEY([AccountPlanID])
REFERENCES [dbo].[AccountPlan] ([AccountPlanID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_ACCOUNT_REFERENCE_ACCOUNTP]
GO
/****** Object:  ForeignKey [FK_ACCOUNTU_REFERENCE_ACCOUNT]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[AccountUserAssociation]  WITH CHECK ADD  CONSTRAINT [FK_ACCOUNTU_REFERENCE_ACCOUNT] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[AccountUserAssociation] CHECK CONSTRAINT [FK_ACCOUNTU_REFERENCE_ACCOUNT]
GO
/****** Object:  ForeignKey [FK_ACCOUNTU_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[AccountUserAssociation]  WITH CHECK ADD  CONSTRAINT [FK_ACCOUNTU_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[AccountUserAssociation] CHECK CONSTRAINT [FK_ACCOUNTU_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_CATEGORY_REFERENCE_CATEGORY]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[CategoryForms]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORY_REFERENCE_CATEGORY] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[CategoryForms] CHECK CONSTRAINT [FK_CATEGORY_REFERENCE_CATEGORY]
GO
/****** Object:  ForeignKey [FK_CATEGORY_REFERENCE_FORM]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[CategoryForms]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORY_REFERENCE_FORM] FOREIGN KEY([FormID])
REFERENCES [dbo].[Form] ([FormID])
GO
ALTER TABLE [dbo].[CategoryForms] CHECK CONSTRAINT [FK_CATEGORY_REFERENCE_FORM]
GO
/****** Object:  ForeignKey [FK_CLINICAL_REFERENCE_TREATMEN]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClinicalService]  WITH CHECK ADD  CONSTRAINT [FK_CLINICAL_REFERENCE_TREATMEN] FOREIGN KEY([TreatmentPlanID])
REFERENCES [dbo].[TreatmentPlan] ([TreatmentPlanID])
GO
ALTER TABLE [dbo].[ClinicalService] CHECK CONSTRAINT [FK_CLINICAL_REFERENCE_TREATMEN]
GO
/****** Object:  ForeignKey [FK_CLINICAL_REFERENCE_CLINICAL]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClinicalServiceDiagnosis]  WITH CHECK ADD  CONSTRAINT [FK_CLINICAL_REFERENCE_CLINICAL] FOREIGN KEY([ClinicalServiceID])
REFERENCES [dbo].[ClinicalService] ([ClinicalServiceID])
GO
ALTER TABLE [dbo].[ClinicalServiceDiagnosis] CHECK CONSTRAINT [FK_CLINICAL_REFERENCE_CLINICAL]
GO
/****** Object:  ForeignKey [FK_CLINICALServiceDiagnosis_REFERENCE_TREATMEN]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClinicalServiceDiagnosis]  WITH CHECK ADD  CONSTRAINT [FK_CLINICALServiceDiagnosis_REFERENCE_TREATMEN] FOREIGN KEY([TreatmentPlanID])
REFERENCES [dbo].[TreatmentPlan] ([TreatmentPlanID])
GO
ALTER TABLE [dbo].[ClinicalServiceDiagnosis] CHECK CONSTRAINT [FK_CLINICALServiceDiagnosis_REFERENCE_TREATMEN]
GO
/****** Object:  ForeignKey [FK_CLINICALNOTERATE_REFERENCE_CLINICALSERVICE]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClinicalServiceNoteRate]  WITH CHECK ADD  CONSTRAINT [FK_CLINICALNOTERATE_REFERENCE_CLINICALSERVICE] FOREIGN KEY([ClinicalServiceID])
REFERENCES [dbo].[ClinicalService] ([ClinicalServiceID])
GO
ALTER TABLE [dbo].[ClinicalServiceNoteRate] CHECK CONSTRAINT [FK_CLINICALNOTERATE_REFERENCE_CLINICALSERVICE]
GO
/****** Object:  ForeignKey [FK_CLINICALNOTERATE_REFERENCE_TREATMENPLAN]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClinicalServiceNoteRate]  WITH CHECK ADD  CONSTRAINT [FK_CLINICALNOTERATE_REFERENCE_TREATMENPLAN] FOREIGN KEY([TreatmentPlanID])
REFERENCES [dbo].[TreatmentPlan] ([TreatmentPlanID])
GO
ALTER TABLE [dbo].[ClinicalServiceNoteRate] CHECK CONSTRAINT [FK_CLINICALNOTERATE_REFERENCE_TREATMENPLAN]
GO
/****** Object:  ForeignKey [FK_ClusterGlanceGuidelineItems_Cluster]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClusterGlanceGuidelineItems]  WITH CHECK ADD  CONSTRAINT [FK_ClusterGlanceGuidelineItems_Cluster] FOREIGN KEY([ClusterID])
REFERENCES [dbo].[Cluster] ([ClusterID])
GO
ALTER TABLE [dbo].[ClusterGlanceGuidelineItems] CHECK CONSTRAINT [FK_ClusterGlanceGuidelineItems_Cluster]
GO
/****** Object:  ForeignKey [FK_ClusterGlanceGuidelineItems_GlanceAndGuidelines]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClusterGlanceGuidelineItems]  WITH CHECK ADD  CONSTRAINT [FK_ClusterGlanceGuidelineItems_GlanceAndGuidelines] FOREIGN KEY([GlanceAndGuidelineID])
REFERENCES [dbo].[GlanceAndGuidelines] ([GlanceAndGuidelineID])
GO
ALTER TABLE [dbo].[ClusterGlanceGuidelineItems] CHECK CONSTRAINT [FK_ClusterGlanceGuidelineItems_GlanceAndGuidelines]
GO
/****** Object:  ForeignKey [FK_CLUSTERS_REFERENCE_CLUSTER]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClusterSymptoms]  WITH CHECK ADD  CONSTRAINT [FK_CLUSTERS_REFERENCE_CLUSTER] FOREIGN KEY([ClusterID])
REFERENCES [dbo].[Cluster] ([ClusterID])
GO
ALTER TABLE [dbo].[ClusterSymptoms] CHECK CONSTRAINT [FK_CLUSTERS_REFERENCE_CLUSTER]
GO
/****** Object:  ForeignKey [FK_CLUSTERS_REFERENCE_SYMPTOM]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ClusterSymptoms]  WITH CHECK ADD  CONSTRAINT [FK_CLUSTERS_REFERENCE_SYMPTOM] FOREIGN KEY([SymptomID])
REFERENCES [dbo].[Symptom] ([SymptomID])
GO
ALTER TABLE [dbo].[ClusterSymptoms] CHECK CONSTRAINT [FK_CLUSTERS_REFERENCE_SYMPTOM]
GO
/****** Object:  ForeignKey [FK_CONTACT_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_CONTACT_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_CONTACT_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_FORMDATA_REFERENCE_FORM]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[FormData]  WITH CHECK ADD  CONSTRAINT [FK_FORMDATA_REFERENCE_FORM] FOREIGN KEY([FormID])
REFERENCES [dbo].[Form] ([FormID])
GO
ALTER TABLE [dbo].[FormData] CHECK CONSTRAINT [FK_FORMDATA_REFERENCE_FORM]
GO
/****** Object:  ForeignKey [FK_FUNCTION_REFERENCE_GROUPS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[FunctionInGroups]  WITH CHECK ADD  CONSTRAINT [FK_FUNCTION_REFERENCE_GROUPS] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([GroupID])
GO
ALTER TABLE [dbo].[FunctionInGroups] CHECK CONSTRAINT [FK_FUNCTION_REFERENCE_GROUPS]
GO
/****** Object:  ForeignKey [FK_FUNCTION_REFERENCE_SYSTEMFUNCTION]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[FunctionInGroups]  WITH CHECK ADD  CONSTRAINT [FK_FUNCTION_REFERENCE_SYSTEMFUNCTION] FOREIGN KEY([FunctionID])
REFERENCES [dbo].[SystemFunction] ([FunctionID])
GO
ALTER TABLE [dbo].[FunctionInGroups] CHECK CONSTRAINT [FK_FUNCTION_REFERENCE_SYSTEMFUNCTION]
GO
/****** Object:  ForeignKey [FK_FUNCTION_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[FunctionInUsers]  WITH CHECK ADD  CONSTRAINT [FK_FUNCTION_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[FunctionInUsers] CHECK CONSTRAINT [FK_FUNCTION_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_FUNCTIONINUSERS_REFERENCE_SYSTEMFUNFCION]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[FunctionInUsers]  WITH CHECK ADD  CONSTRAINT [FK_FUNCTIONINUSERS_REFERENCE_SYSTEMFUNFCION] FOREIGN KEY([FunctionID])
REFERENCES [dbo].[SystemFunction] ([FunctionID])
GO
ALTER TABLE [dbo].[FunctionInUsers] CHECK CONSTRAINT [FK_FUNCTIONINUSERS_REFERENCE_SYSTEMFUNFCION]
GO
/****** Object:  ForeignKey [FK_OBJECTIV_REFERENCE_LONGTERM]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ObjectiveLongTermGoal]  WITH CHECK ADD  CONSTRAINT [FK_OBJECTIV_REFERENCE_LONGTERM] FOREIGN KEY([LongTermGoalID])
REFERENCES [dbo].[LongTermGoal] ([LongTermGoalID])
GO
ALTER TABLE [dbo].[ObjectiveLongTermGoal] CHECK CONSTRAINT [FK_OBJECTIV_REFERENCE_LONGTERM]
GO
/****** Object:  ForeignKey [FK_OBJECTIV_REFERENCE_OBJECTIV]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[ObjectiveLongTermGoal]  WITH NOCHECK ADD  CONSTRAINT [FK_OBJECTIV_REFERENCE_OBJECTIV] FOREIGN KEY([ObjectiveID])
REFERENCES [dbo].[Objective] ([ObjectiveID])
GO
ALTER TABLE [dbo].[ObjectiveLongTermGoal] CHECK CONSTRAINT [FK_OBJECTIV_REFERENCE_OBJECTIV]
GO
/****** Object:  ForeignKey [FK_PATIENT_REFERENCE_SITE]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_PATIENT_REFERENCE_SITE] FOREIGN KEY([SiteID])
REFERENCES [dbo].[Site] ([SiteID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_PATIENT_REFERENCE_SITE]
GO
/****** Object:  ForeignKey [FK_PATIENT_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_PATIENT_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_PATIENT_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_SITEDEPA_REFERENCE_DEPARTME]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[SiteDepartmentUsers]  WITH CHECK ADD  CONSTRAINT [FK_SITEDEPA_REFERENCE_DEPARTME] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[SiteDepartmentUsers] CHECK CONSTRAINT [FK_SITEDEPA_REFERENCE_DEPARTME]
GO
/****** Object:  ForeignKey [FK_SITEDEPA_REFERENCE_SITE]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[SiteDepartmentUsers]  WITH CHECK ADD  CONSTRAINT [FK_SITEDEPA_REFERENCE_SITE] FOREIGN KEY([SiteID])
REFERENCES [dbo].[Site] ([SiteID])
GO
ALTER TABLE [dbo].[SiteDepartmentUsers] CHECK CONSTRAINT [FK_SITEDEPA_REFERENCE_SITE]
GO
/****** Object:  ForeignKey [FK_SITEDEPA_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[SiteDepartmentUsers]  WITH CHECK ADD  CONSTRAINT [FK_SITEDEPA_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[SiteDepartmentUsers] CHECK CONSTRAINT [FK_SITEDEPA_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_STRATEGY_REFERENCE_OBJECTIV]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[StrategyObjectives]  WITH NOCHECK ADD  CONSTRAINT [FK_STRATEGY_REFERENCE_OBJECTIV] FOREIGN KEY([ObjectiveID])
REFERENCES [dbo].[Objective] ([ObjectiveID])
GO
ALTER TABLE [dbo].[StrategyObjectives] CHECK CONSTRAINT [FK_STRATEGY_REFERENCE_OBJECTIV]
GO
/****** Object:  ForeignKey [FK_STRATEGY_REFERENCE_STRATEGY]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[StrategyObjectives]  WITH CHECK ADD  CONSTRAINT [FK_STRATEGY_REFERENCE_STRATEGY] FOREIGN KEY([StrategyID])
REFERENCES [dbo].[Strategy] ([StrategyID])
GO
ALTER TABLE [dbo].[StrategyObjectives] CHECK CONSTRAINT [FK_STRATEGY_REFERENCE_STRATEGY]
GO
/****** Object:  ForeignKey [FK_SYMPTOML_REFERENCE_LONGTERM]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[SymptomLongTermGoal]  WITH CHECK ADD  CONSTRAINT [FK_SYMPTOML_REFERENCE_LONGTERM] FOREIGN KEY([LongTermGoalID])
REFERENCES [dbo].[LongTermGoal] ([LongTermGoalID])
GO
ALTER TABLE [dbo].[SymptomLongTermGoal] CHECK CONSTRAINT [FK_SYMPTOML_REFERENCE_LONGTERM]
GO
/****** Object:  ForeignKey [FK_SYMPTOML_REFERENCE_SYMPTOM]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[SymptomLongTermGoal]  WITH CHECK ADD  CONSTRAINT [FK_SYMPTOML_REFERENCE_SYMPTOM] FOREIGN KEY([SymptomID])
REFERENCES [dbo].[Symptom] ([SymptomID])
GO
ALTER TABLE [dbo].[SymptomLongTermGoal] CHECK CONSTRAINT [FK_SYMPTOML_REFERENCE_SYMPTOM]
GO
/****** Object:  ForeignKey [FK_TREATMEN_REFERENCE_PATIENT]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[TreatmentPlan]  WITH CHECK ADD  CONSTRAINT [FK_TREATMEN_REFERENCE_PATIENT] FOREIGN KEY([PatientID])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[TreatmentPlan] CHECK CONSTRAINT [FK_TREATMEN_REFERENCE_PATIENT]
GO
/****** Object:  ForeignKey [FK_TREATMEN_REFERENCE_TREATMEN]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[TreatmentPlanItems]  WITH CHECK ADD  CONSTRAINT [FK_TREATMEN_REFERENCE_TREATMEN] FOREIGN KEY([TreatmentPlanID])
REFERENCES [dbo].[TreatmentPlan] ([TreatmentPlanID])
GO
ALTER TABLE [dbo].[TreatmentPlanItems] CHECK CONSTRAINT [FK_TREATMEN_REFERENCE_TREATMEN]
GO
/****** Object:  ForeignKey [FK_USERCATE_REFERENCE_CATEGORY]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission]  WITH CHECK ADD  CONSTRAINT [FK_USERCATE_REFERENCE_CATEGORY] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[UserCategoryPermission] CHECK CONSTRAINT [FK_USERCATE_REFERENCE_CATEGORY]
GO
/****** Object:  ForeignKey [FK_USERCATE_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserCategoryPermission]  WITH CHECK ADD  CONSTRAINT [FK_USERCATE_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserCategoryPermission] CHECK CONSTRAINT [FK_USERCATE_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_USERFILE_REFERENCE_FILES]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission]  WITH CHECK ADD  CONSTRAINT [FK_USERFILE_REFERENCE_FILES] FOREIGN KEY([FileID])
REFERENCES [dbo].[Files] ([FileID])
GO
ALTER TABLE [dbo].[UserFilePermission] CHECK CONSTRAINT [FK_USERFILE_REFERENCE_FILES]
GO
/****** Object:  ForeignKey [FK_USERFILE_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFilePermission]  WITH CHECK ADD  CONSTRAINT [FK_USERFILE_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserFilePermission] CHECK CONSTRAINT [FK_USERFILE_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_USERFORM_REFERENCE_FORMDATA]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission]  WITH CHECK ADD  CONSTRAINT [FK_USERFORM_REFERENCE_FORMDATA] FOREIGN KEY([FormDataID])
REFERENCES [dbo].[FormData] ([FormDataID])
GO
ALTER TABLE [dbo].[UserFormDataPermission] CHECK CONSTRAINT [FK_USERFORM_REFERENCE_FORMDATA]
GO
/****** Object:  ForeignKey [FK_USERFORM_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserFormDataPermission]  WITH CHECK ADD  CONSTRAINT [FK_USERFORM_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserFormDataPermission] CHECK CONSTRAINT [FK_USERFORM_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_USERINGR_REFERENCE_GROUPS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserInGroups]  WITH CHECK ADD  CONSTRAINT [FK_USERINGR_REFERENCE_GROUPS] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([GroupID])
GO
ALTER TABLE [dbo].[UserInGroups] CHECK CONSTRAINT [FK_USERINGR_REFERENCE_GROUPS]
GO
/****** Object:  ForeignKey [FK_USERINGR_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserInGroups]  WITH CHECK ADD  CONSTRAINT [FK_USERINGR_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserInGroups] CHECK CONSTRAINT [FK_USERINGR_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_USERPAYM_REFERENCE_ACCOUNT]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserPayment]  WITH CHECK ADD  CONSTRAINT [FK_USERPAYM_REFERENCE_ACCOUNT] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[UserPayment] CHECK CONSTRAINT [FK_USERPAYM_REFERENCE_ACCOUNT]
GO
/****** Object:  ForeignKey [FK_USERS_REFERENCE_USERTYPE]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_USERS_REFERENCE_USERTYPE] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([UserTypeID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_USERS_REFERENCE_USERTYPE]
GO
/****** Object:  ForeignKey [FK_USERTREA_REFERENCE_TREATMEN]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission]  WITH CHECK ADD  CONSTRAINT [FK_USERTREA_REFERENCE_TREATMEN] FOREIGN KEY([TreatmentPlanID])
REFERENCES [dbo].[TreatmentPlan] ([TreatmentPlanID])
GO
ALTER TABLE [dbo].[UserTreatmentPlanPermission] CHECK CONSTRAINT [FK_USERTREA_REFERENCE_TREATMEN]
GO
/****** Object:  ForeignKey [FK_USERTREA_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserTreatmentPlanPermission]  WITH CHECK ADD  CONSTRAINT [FK_USERTREA_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserTreatmentPlanPermission] CHECK CONSTRAINT [FK_USERTREA_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_USERUSER_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserUserAssociation]  WITH CHECK ADD  CONSTRAINT [FK_USERUSER_REFERENCE_USERS] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserUserAssociation] CHECK CONSTRAINT [FK_USERUSER_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_USERUSERTarget_REFERENCE_USERS]    Script Date: 05/11/2011 15:13:14 ******/
ALTER TABLE [dbo].[UserUserAssociation]  WITH CHECK ADD  CONSTRAINT [FK_USERUSERTarget_REFERENCE_USERS] FOREIGN KEY([TargetUserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserUserAssociation] CHECK CONSTRAINT [FK_USERUSERTarget_REFERENCE_USERS]
GO
