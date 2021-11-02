
GO
/****** Object:  Table [dbo].[CycleDurationMaster]    Script Date: 22-02-2021 14:43:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CycleDurationMaster](
	[CycleDurationId] [bigint] IDENTITY(1,1) NOT NULL,
	[CycleDuration] [varchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK__CycleDur__06F54415C34EB8A5] PRIMARY KEY CLUSTERED 
(
	[CycleDurationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CycleDurationSymbols]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CycleDurationSymbols](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CycleDurationId] [bigint] NOT NULL,
	[Symbol] [varchar](20) NOT NULL,
	[Description] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeContactDetail]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeContactDetail](
	[ContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[DeskPhoneNumber] [nvarchar](25) NULL,
	[SkypeUrl] [nvarchar](250) NULL,
	[TwitterUrl] [nvarchar](250) NULL,
	[LinkedInUrl] [nvarchar](250) NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[CountryStdCode] [nvarchar](10) NULL,
 CONSTRAINT [PK_EmployeeContactDetail] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [varchar](30) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Password] [text] NOT NULL,
	[PasswordSalt] [text] NOT NULL,
	[Designation] [nvarchar](200) NULL,
	[EmailId] [varchar](100) NOT NULL,
	[ReportingTo] [bigint] NULL,
	[ImagePath] [text] NULL,
	[OrganisationId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[RoleId] [bigint] NOT NULL,
	[ProfileImageFile] [nvarchar](500) NULL,
	[LoginFailCount] [int] NULL,
 CONSTRAINT [PK__Employee__7AD04F11A574EEC6] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[LogId] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[PageName] [nvarchar](100) NOT NULL,
	[FunctionName] [nvarchar](100) NOT NULL,
	[ErrorDetail] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoalUnlockDate]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalUnlockDate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganisationCycleId] [bigint] NOT NULL,
	[Type] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SubmitDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobsAudit]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobsAudit](
	[AuditId] [bigint] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](500) NOT NULL,
	[Status] [nvarchar](100) NULL,
	[Details] [nvarchar](500) NULL,
	[ExecutionDate] [datetime] NOT NULL,
	[AuditDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailTemplate]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TempleteSubject] [text] NOT NULL,
	[TempleteBody] [text] NOT NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuleMaster]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleMaster](
	[ModuleId] [bigint] IDENTITY(1,1) NOT NULL,
	[ModuleName] [varchar](30) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ObjectivesMaster]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObjectivesMaster](
	[ObjectiveId] [int] IDENTITY(1,1) NOT NULL,
	[ObjectiveName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ObjectiveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OKRStatusMaster]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OKRStatusMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [varchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Code] [varchar](50) NOT NULL,
	[Color] [varchar](100) NOT NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK__OKRStatu__3214EC07D56A307D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganisationCycle]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganisationCycle](
	[OrganisationCycleId] [bigint] IDENTITY(1,1) NOT NULL,
	[CycleDurationId] [bigint] NOT NULL,
	[SymbolId] [int] NOT NULL,
	[OrganisationId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CycleStartDate] [datetime] NOT NULL,
	[CycleEndDate] [datetime] NULL,
	[CycleYear] [int] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsDiscarded] [bit] NULL,
	[IsProcessed] [bit] NULL,
 CONSTRAINT [PK__Organisa__D84025FB6A3FA1DA] PRIMARY KEY CLUSTERED 
(
	[OrganisationCycleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organisations]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organisations](
	[OrganisationId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganisationName] [varchar](200) NOT NULL,
	[OrganisationHead] [bigint] NULL,
	[ImagePath] [text] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[ParentId] [bigint] NULL,
	[Description] [varchar](500) NULL,
	[LogoName] [varchar](100) NULL,
 CONSTRAINT [PK__Organisa__722346DC1AC8FCA8] PRIMARY KEY CLUSTERED 
(
	[OrganisationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationObjectives]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationObjectives](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganisationId] [bigint] NOT NULL,
	[ObjectiveId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsDiscarded] [bit] NULL,
 CONSTRAINT [PK_OrganizationObjectives] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionMaster]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionMaster](
	[PermissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[ModuleId] [bigint] NOT NULL,
	[Permission] [varchar](50) NOT NULL,
	[PermissionDescription] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionRoleMapping]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionRoleMapping](
	[PermissionMappingId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NOT NULL,
	[PermissionId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[RoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](20) NOT NULL,
	[RoleDescription] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetail]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetail](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NULL,
	[RoleId] [bigint] NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
	[EmailId] [nvarchar](50) NOT NULL,
	[Password] [text] NOT NULL,
	[Salt] [text] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[ReportingTo] [bigint] NULL,
	[Status] [int] NULL,
	[ImagePath] [text] NULL,
	[LastLoginTime] [datetime] NULL,
	[LoginCount] [int] NULL,
	[ImageDetails] [text] NULL,
	[OrganisationId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserToken]    Script Date: 22-02-2021 14:43:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserToken](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
	[Token] [text] NOT NULL,
	[ExpireTime] [datetime] NOT NULL,
	[TokenType] [int] NULL,
	[LastLoginDate] [datetime] NULL,
	[CurrentLoginDate] [datetime] NULL,
 CONSTRAINT [PK_UserToken] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CycleDurationMaster] ON 
GO
INSERT [dbo].[CycleDurationMaster] ([CycleDurationId], [CycleDuration], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Quarterly', 1, 331, CAST(N'2020-07-15T18:03:16.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[CycleDurationMaster] ([CycleDurationId], [CycleDuration], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'HalfYearly', 1, 331, CAST(N'2020-07-15T18:03:16.127' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[CycleDurationMaster] ([CycleDurationId], [CycleDuration], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Annually', 1, 331, CAST(N'2020-07-15T18:03:16.130' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[CycleDurationMaster] ([CycleDurationId], [CycleDuration], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'ThreeYears', 1, 331, CAST(N'2020-07-15T18:03:16.130' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CycleDurationMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[CycleDurationSymbols] ON 
GO
INSERT [dbo].[CycleDurationSymbols] ([Id], [CycleDurationId], [Symbol], [Description], [IsActive]) VALUES (1, 1, N'Q1', N'Quarter one', 1)
GO
INSERT [dbo].[CycleDurationSymbols] ([Id], [CycleDurationId], [Symbol], [Description], [IsActive]) VALUES (2, 1, N'Q2', N'Quarter two', 1)
GO
INSERT [dbo].[CycleDurationSymbols] ([Id], [CycleDurationId], [Symbol], [Description], [IsActive]) VALUES (3, 1, N'Q3', N'Quarter three', 1)
GO
INSERT [dbo].[CycleDurationSymbols] ([Id], [CycleDurationId], [Symbol], [Description], [IsActive]) VALUES (4, 1, N'Q4', N'Quarter four', 1)
GO
INSERT [dbo].[CycleDurationSymbols] ([Id], [CycleDurationId], [Symbol], [Description], [IsActive]) VALUES (5, 2, N'H1', N'Half yearly one', 1)
GO
INSERT [dbo].[CycleDurationSymbols] ([Id], [CycleDurationId], [Symbol], [Description], [IsActive]) VALUES (6, 2, N'H2', N'Half yearly two', 1)
GO
INSERT [dbo].[CycleDurationSymbols] ([Id], [CycleDurationId], [Symbol], [Description], [IsActive]) VALUES (7, 3, N'Y', N'Yearly', 1)
GO
INSERT [dbo].[CycleDurationSymbols] ([Id], [CycleDurationId], [Symbol], [Description], [IsActive]) VALUES (8, 4, N'Y3', N'Three Years', 1)
GO
SET IDENTITY_INSERT [dbo].[CycleDurationSymbols] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 
GO
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeCode], [FirstName], [LastName], [Password], [PasswordSalt], [Designation], [EmailId], [ReportingTo], [ImagePath], [OrganisationId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [RoleId], [ProfileImageFile], [LoginFailCount]) VALUES (1, N'14482', N'Anurag', N'Chaudhuri', N'vatTsN/Sx7Y7ylJoipeIUg==', N'5ced3dbf-cb39-4d34-8086-70377843e9ff', N'Principle Product Manager', N'anurag.chaudhuri@infoprolearning.com', 0, N'https://dmfe0nx819607.cloudfront.net/ProfileImage/54d1aba1-cb0d-4bdd-97e0-d06d5ec47f4c.jpg?Expires=1925470354&Signature=cP-MZWQ8ZWWqRnCrGuLTLf9T41hQRyROM04H8zJlqpeou1xiK2du3pxZcd5ayaUPU-lqI0ly3b58dLSU6J7N7w0G1rfUI4Vr0etzmi44oczWIHWN5buPkL2PJns5ZoM4YsW8DEsPmLdznWgwUg9CoABusYNqQxVpz4xhQ3zUFIN0B3zPdG-hmKHW7TknB6M6Y1gWvGJbWJTvt~Mj-mrwdbdyo~zNQJE-RJ3SWIvjh5oPSEXtFNuR-c3NxCtOMZkwgurdLkWwgjC6T2P1MnOYgwERxmgP1XaxDzEWty359eDWgneNQXd1aqGfNJxPDYD17wzBefFV~QmplMmaPfFfGw__&Key-Pair-Id=APKAIUVT54QRP2NDQEKQ', 1, 1, 0, getdate(), 1,  getdate(), 2, N'54d1aba1-cb0d-4bdd-97e0-d06d5ec47f4c.jpg', 0)
GO
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeCode], [FirstName], [LastName], [Password], [PasswordSalt], [Designation], [EmailId], [ReportingTo], [ImagePath], [OrganisationId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [RoleId], [ProfileImageFile], [LoginFailCount]) VALUES (2, N'14938', N'Simona', N'Grozeva', N'n5DrBrsTshO7owBMWxbDIg==', N'5233b817-670f-4c77-acb2-9327637a97bd', N'Account Executive', N'simona.grozeva@unlockokr.com', 0, N'https://d1nfs08j4vfq5.cloudfront.net/ProfileImage/cd89a3b4-dc91-4d91-8231-3c2d0fd81e70.jpg?Expires=1929027033&Signature=NVLKCxavmucfQ6vwjJOqTiUGcnJGPNacJcX1hzroOup3v3g7vRbur0hmW~0xcBjwiOdmBFKdV0Xc-oeEinOlencUGPytDXHvaHo~8k~0K6kjgYF9bEt3R0L3R7JOtxaopDwNrG4TsEFXjQLT5E~kHCzEE4KDs5WfSn35uXCptUog88oacA2ls4f3h6rZrkoUdtW5JqFpaYVrPzTvx-Q9hynnbqePUOlIFWlHQ37wlxRP2mBfw97C6XfHIvdOV6ZAV2x4tytIb3izPl6UyCrOkz6B8ZT-o6nlXKGmiZTPWwa21ioYFTQoPA8HNO~hePUaRYF4-YCtxWX1MSUOEf6y6w__&Key-Pair-Id=APKAIUVT54QRP2NDQEKQ', 1, 1, 0, getdate(), 2,  getdate(), 2, N'cd89a3b4-dc91-4d91-8231-3c2d0fd81e70.jpg', 0)
GO

SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[GoalUnlockDate] ON 
GO
INSERT [dbo].[GoalUnlockDate] ([Id], [OrganisationCycleId], [Type], [IsActive], [SubmitDate]) VALUES (1, 1, 1, 1, CAST(N'2021-03-31T11:45:00.000' AS DateTime))
GO
INSERT [dbo].[GoalUnlockDate] ([Id], [OrganisationCycleId], [Type], [IsActive], [SubmitDate]) VALUES (2, 2, 1, 1, CAST(N'2021-06-30T11:45:00.000' AS DateTime))
GO
INSERT [dbo].[GoalUnlockDate] ([Id], [OrganisationCycleId], [Type], [IsActive], [SubmitDate]) VALUES (3, 3, 1, 1, CAST(N'2021-09-30T11:45:00.000' AS DateTime))
GO
INSERT [dbo].[GoalUnlockDate] ([Id], [OrganisationCycleId], [Type], [IsActive], [SubmitDate]) VALUES (4, 4, 1, 1, CAST(N'2021-12-31T11:45:00.000' AS DateTime))
GO
INSERT [dbo].[GoalUnlockDate] ([Id], [OrganisationCycleId], [Type], [IsActive], [SubmitDate]) VALUES (5, 1, 2, 1, CAST(N'2021-04-10T11:45:00.000' AS DateTime))
GO
INSERT [dbo].[GoalUnlockDate] ([Id], [OrganisationCycleId], [Type], [IsActive], [SubmitDate]) VALUES (6, 2, 2, 1, CAST(N'2021-07-10T11:45:00.000' AS DateTime))
GO
INSERT [dbo].[GoalUnlockDate] ([Id], [OrganisationCycleId], [Type], [IsActive], [SubmitDate]) VALUES (7, 3, 2, 1, CAST(N'2021-10-10T11:45:00.000' AS DateTime))
GO
INSERT [dbo].[GoalUnlockDate] ([Id], [OrganisationCycleId], [Type], [IsActive], [SubmitDate]) VALUES (8, 4, 2, 1, CAST(N'2022-01-10T11:45:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[GoalUnlockDate] OFF
GO
SET IDENTITY_INSERT [dbo].[JobsAudit] ON 
GO
INSERT [dbo].[JobsAudit] ([AuditId], [JobName], [Status], [Details], [ExecutionDate], [AuditDate]) VALUES (1, N'sp_GenerateOrgCylceOnProcessed', N'Started', N'Execution started', CAST(N'2020-12-30T13:02:20.687' AS DateTime), CAST(N'2020-12-30T13:02:20.687' AS DateTime))
GO
INSERT [dbo].[JobsAudit] ([AuditId], [JobName], [Status], [Details], [ExecutionDate], [AuditDate]) VALUES (2, N'sp_GenerateOrgCylceOnProcessed', N'InProgress', N'1 Organisation(s) found to processed', CAST(N'2020-12-30T13:02:20.700' AS DateTime), CAST(N'2020-12-30T13:02:20.700' AS DateTime))
GO
INSERT [dbo].[JobsAudit] ([AuditId], [JobName], [Status], [Details], [ExecutionDate], [AuditDate]) VALUES (3, N'sp_GenerateOrgCylceOnProcessed', N'Completed', N'Job Successfully completed', CAST(N'2020-12-30T13:02:20.700' AS DateTime), CAST(N'2020-12-30T13:02:20.700' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[JobsAudit] OFF
GO
SET IDENTITY_INSERT [dbo].[ModuleMaster] ON 
GO
INSERT [dbo].[ModuleMaster] ([ModuleId], [ModuleName], [Description], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'MyGoal', N'My Goal Module', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ModuleMaster] ([ModuleId], [ModuleName], [Description], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Feedback', N'Okr Feedback Module', 1, 331, CAST(N'2020-07-02T17:55:27.967' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ModuleMaster] ([ModuleId], [ModuleName], [Description], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'People', N'Okr People Module', 1, 331, CAST(N'2020-07-02T17:55:44.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ModuleMaster] ([ModuleId], [ModuleName], [Description], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'AlignmentMap', N'Alignment Map Module', 1, 331, CAST(N'2020-07-02T17:56:05.643' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ModuleMaster] ([ModuleId], [ModuleName], [Description], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, N'Profile', N'Profile Module', 1, 331, CAST(N'2020-08-13T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ModuleMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ObjectivesMaster] ON 
GO
INSERT [dbo].[ObjectivesMaster] ([ObjectiveId], [ObjectiveName], [Description], [IsActive]) VALUES (1, N'Organisational', N'Objective directly related to Organization', 1)
GO
INSERT [dbo].[ObjectivesMaster] ([ObjectiveId], [ObjectiveName], [Description], [IsActive]) VALUES (2, N'Private', N'Private Objective', 1)
GO
SET IDENTITY_INSERT [dbo].[ObjectivesMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[OKRStatusMaster] ON 
GO
INSERT [dbo].[OKRStatusMaster] ([Id], [StatusName], [Description], [Code], [Color], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Not Started', N'Goals are untouched. Concise goal outcomes may help.', N'notStarted', N'DAE0EA', CAST(N'2020-07-15T15:08:38.057' AS DateTime), 331, NULL, NULL)
GO
INSERT [dbo].[OKRStatusMaster] ([Id], [StatusName], [Description], [Code], [Color], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'At Risk', N'Goals in perilous state. Immediate attention required.', N'atRisk', N'FF0000', CAST(N'2020-07-15T15:08:38.057' AS DateTime), 331, NULL, NULL)
GO
INSERT [dbo].[OKRStatusMaster] ([Id], [StatusName], [Description], [Code], [Color], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, N'Lagging', N'Goals falling behind. Updating the progress is call of the hour.', N'lagging', N'FF9401', CAST(N'2020-07-15T15:08:38.057' AS DateTime), 331, NULL, NULL)
GO
INSERT [dbo].[OKRStatusMaster] ([Id], [StatusName], [Description], [Code], [Color], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (4, N'On Track', N'Goals progressing in the right direction. Keep up the consistency.', N'onTrack', N'60A917', CAST(N'2020-07-15T15:08:38.057' AS DateTime), 331, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[OKRStatusMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[OrganisationCycle] ON 
GO
INSERT [dbo].[OrganisationCycle] ([OrganisationCycleId], [CycleDurationId], [SymbolId], [OrganisationId], [IsActive], [CycleStartDate], [CycleEndDate], [CycleYear], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDiscarded], [IsProcessed]) VALUES (1, 1, 1, 1, 1, CAST(N'2021-01-01T11:45:00.000' AS DateTime), CAST(N'2021-03-31T11:45:00.000' AS DateTime), 2021, 1, CAST(N'2021-01-27T11:46:17.427' AS DateTime), NULL, NULL, 0, 0)
GO
INSERT [dbo].[OrganisationCycle] ([OrganisationCycleId], [CycleDurationId], [SymbolId], [OrganisationId], [IsActive], [CycleStartDate], [CycleEndDate], [CycleYear], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDiscarded], [IsProcessed]) VALUES (2, 1, 2, 1, 1, CAST(N'2021-04-01T11:45:00.000' AS DateTime), CAST(N'2021-06-30T11:45:00.000' AS DateTime), 2021, 1, CAST(N'2021-01-27T11:46:17.620' AS DateTime), NULL, NULL, 0, 0)
GO
INSERT [dbo].[OrganisationCycle] ([OrganisationCycleId], [CycleDurationId], [SymbolId], [OrganisationId], [IsActive], [CycleStartDate], [CycleEndDate], [CycleYear], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDiscarded], [IsProcessed]) VALUES (3, 1, 3, 1, 1, CAST(N'2021-07-01T11:45:00.000' AS DateTime), CAST(N'2021-09-30T11:45:00.000' AS DateTime), 2021, 1, CAST(N'2021-01-27T11:46:17.620' AS DateTime), NULL, NULL, 0, 0)
GO
INSERT [dbo].[OrganisationCycle] ([OrganisationCycleId], [CycleDurationId], [SymbolId], [OrganisationId], [IsActive], [CycleStartDate], [CycleEndDate], [CycleYear], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDiscarded], [IsProcessed]) VALUES (4, 1, 4, 1, 1, CAST(N'2021-10-01T11:45:00.000' AS DateTime), CAST(N'2021-12-31T11:45:00.000' AS DateTime), 2021, 1, CAST(N'2021-01-27T11:46:17.620' AS DateTime), NULL, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[OrganisationCycle] OFF
GO
SET IDENTITY_INSERT [dbo].[Organisations] ON 
GO
INSERT [dbo].[Organisations] ([OrganisationId], [OrganisationName], [OrganisationHead], [ImagePath], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDeleted], [ParentId], [Description], [LogoName]) VALUES (1, N'Senetic', 0, N'https://d1nfs08j4vfq5.cloudfront.net/OrganisationLogo/dc287573-44e9-4276-91c5-fb0d04e55058.png?Expires=1928475792&Signature=WA4wQS-I6tv-IrgHzDamis2qqdLv8Rf0hx-C5uLxc3JvjC8YTTBp3g8~awknwSrSiZ3NiVYqgzICY2Pu7FFtqNnC8ah67ewvqEMJ5mM-vcbHW1R55fLJk3T2Tmk181epR4Ru6u5Xl6XFeuFqH9SYJT~LEutimGG2FH9i7JDpY4fc9rEV9pDp~TL-YTcWhcssZt4TQlXjZunfLVFc94q~JSRrqKMwCHphQdF~qAKC6i-IJP7KRX9P0sZvEwlHym78nR-n4x~fEy5GlzKyjvbfGEiEr51KRH9quxki-SmptgJPzEEfhwW33Garda5KkuJXeyekDF6JWUOiveh~W8Byyg__&Key-Pair-Id=APKAIUVT54QRP2NDQEKQ', 1, 1, CAST(N'2021-01-27T11:46:17.220' AS DateTime), 1, CAST(N'2021-02-10T07:43:12.900' AS DateTime), 0, 0, NULL, N'client-logo.viggo.png')
GO
SET IDENTITY_INSERT [dbo].[Organisations] OFF
GO
SET IDENTITY_INSERT [dbo].[OrganizationObjectives] ON 
GO
INSERT [dbo].[OrganizationObjectives] ([Id], [OrganisationId], [ObjectiveId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDiscarded]) VALUES (1, 1, 2, 1, 1, CAST(N'2021-01-27T11:46:17.827' AS DateTime), 1, CAST(N'2021-02-10T07:43:12.927' AS DateTime), 0)
GO
INSERT [dbo].[OrganizationObjectives] ([Id], [OrganisationId], [ObjectiveId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDiscarded]) VALUES (2, 1, 1, 1, 1, CAST(N'2021-01-27T11:46:17.750' AS DateTime), NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[OrganizationObjectives] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionMaster] ON 
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, N'Create Goal', N'Create Goal', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, 1, N'Create KR', N'Create KR', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, 1, N'Edit Goal', N'Edit Goal', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, 1, N'Edit KR', N'Edit KR', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, 1, N'Align To Goal', N'Align To Goal', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, 1, N'Import Previous Goal', N'Import Previous Goal', 0, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, 1, N'MyGoal Request 1:1', N'MyGoal Request 1:1', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, 1, N'Assign a contributor', N'Assign a contributor', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, 2, N'Ask Feedback', N'Ask Feedback', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, 2, N'Give Feedback', N'Give Feedback', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, 2, N'View Feedback', N'View Feedback', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, 2, N'Comment on Feedback', N'Comment on Feedback', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, 2, N'Feedback Request 1:1', N'Feedback Request 1:1', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (15, 3, N'My Connection view', N'My Connection view', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (16, 4, N'My Goals', N'My Goals', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (17, 4, N'My Contributors', N'My Contributors', 1, 331, CAST(N'2020-07-02T17:54:52.930' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (19, 4, N'View Other Person Alignment Map', N'View Other Person Alignment Map', 1, 331, CAST(N'2020-08-13T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (20, 6, N'Edit Profile', N'Edit Profile', 1, 331, CAST(N'2020-08-13T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (21, 6, N'Edit Designation ', N'Edit Designation ', 0, 331, CAST(N'2020-08-13T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (22, 6, N'Edit Role', N'Edit Role', 0, 331, CAST(N'2020-08-13T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionMaster] ([PermissionId], [ModuleId], [Permission], [PermissionDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (23, 1, N'View MyGoal', N'View MyGoal', 1, 331, CAST(N'1905-06-26T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PermissionMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionRoleMapping] ON 
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (21, 2, 1, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:36:32.417' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (22, 2, 3, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:36:41.010' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (23, 2, 4, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:36:43.657' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (24, 2, 5, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:36:51.307' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (25, 2, 6, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:37:02.670' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (26, 2, 7, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:38:30.157' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (27, 2, 8, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:50:27.320' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (28, 2, 9, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:39:51.303' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (29, 2, 10, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:39:53.420' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (30, 2, 11, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:39:55.147' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (31, 2, 12, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:40:01.913' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (32, 2, 13, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T05:00:54.063' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (33, 2, 14, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:48:14.907' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (34, 2, 15, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T05:00:54.363' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (35, 2, 16, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T05:00:57.917' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (36, 2, 17, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T05:00:59.477' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (37, 2, 19, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T05:01:05.733' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (38, 2, 20, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T05:01:11.550' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (39, 2, 21, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T05:01:12.940' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (40, 2, 22, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 1, CAST(N'2020-10-29T04:35:22.530' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (41, 3, 1, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 188, CAST(N'2020-08-14T12:41:40.050' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (42, 3, 3, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 627, CAST(N'2020-08-14T06:55:36.557' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (43, 3, 4, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 188, CAST(N'2020-08-14T08:48:39.777' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (44, 3, 5, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (45, 3, 6, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (46, 3, 7, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (47, 3, 8, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (48, 3, 9, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (49, 3, 10, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 188, CAST(N'2020-09-10T08:23:37.567' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (50, 3, 11, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 188, CAST(N'2020-09-10T08:23:38.560' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (51, 3, 12, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 3, CAST(N'2020-10-28T15:43:58.953' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (52, 3, 13, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (53, 3, 14, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (54, 3, 15, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (55, 3, 16, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (56, 3, 17, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (57, 3, 19, 0, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), 2, CAST(N'2021-01-13T14:44:03.367' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (58, 3, 20, 1, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (59, 3, 21, 0, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (60, 3, 22, 0, 331, CAST(N'2020-08-13T11:18:59.050' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (101, 2, 23, 0, 331, CAST(N'1905-06-26T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-13T07:20:03.880' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (102, 3, 23, 0, 331, CAST(N'1905-06-26T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-13T07:20:00.123' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (103, 4, 1, 0, 2, CAST(N'2021-01-13T14:43:26.133' AS DateTime), 2, CAST(N'2021-01-22T14:56:10.220' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (104, 4, 21, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (105, 4, 20, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (106, 4, 19, 1, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), 2, CAST(N'2021-01-13T14:44:15.717' AS DateTime))
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (107, 4, 17, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (108, 4, 16, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (109, 4, 15, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (110, 4, 14, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (111, 4, 13, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (112, 4, 22, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (113, 4, 12, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (114, 4, 10, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (115, 4, 9, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (116, 4, 8, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (117, 4, 7, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (118, 4, 6, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (119, 4, 5, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (120, 4, 4, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (121, 4, 3, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (122, 4, 11, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (123, 4, 23, 0, 2, CAST(N'2021-01-13T14:43:26.137' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (124, 5, 1, 0, 2, CAST(N'2021-01-22T14:42:05.617' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (125, 5, 21, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (126, 5, 20, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (127, 5, 19, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (128, 5, 17, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (129, 5, 16, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (130, 5, 15, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (131, 5, 14, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (132, 5, 13, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (133, 5, 22, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (134, 5, 12, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (135, 5, 10, 0, 2, CAST(N'2021-01-22T14:42:05.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (136, 5, 9, 0, 2, CAST(N'2021-01-22T14:42:05.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (137, 5, 8, 0, 2, CAST(N'2021-01-22T14:42:05.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (138, 5, 7, 0, 2, CAST(N'2021-01-22T14:42:05.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (139, 5, 6, 0, 2, CAST(N'2021-01-22T14:42:05.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (140, 5, 5, 0, 2, CAST(N'2021-01-22T14:42:05.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (141, 5, 4, 0, 2, CAST(N'2021-01-22T14:42:05.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (142, 5, 3, 0, 2, CAST(N'2021-01-22T14:42:05.710' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (143, 5, 11, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PermissionRoleMapping] ([PermissionMappingId], [RoleId], [PermissionId], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (144, 5, 23, 0, 2, CAST(N'2021-01-22T14:42:05.713' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PermissionRoleMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] ON 
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'Admin', N'string', 1, 331, CAST(N'2020-07-01T16:02:50.493' AS DateTime), 627, CAST(N'2020-08-17T18:01:45.027' AS DateTime))
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'Default', N'string', 1, 331, CAST(N'2020-07-01T16:13:52.547' AS DateTime), 188, CAST(N'2020-08-18T05:06:55.893' AS DateTime))
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'OKR Coach ', N'', 1, 2, CAST(N'2021-01-13T14:43:25.533' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[RoleMaster] ([RoleId], [RoleName], [RoleDescription], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, N'Manager', N'', 1, 2, CAST(N'2021-01-22T14:42:05.117' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
GO

-- SET ANSI_PADDING ON
-- GO
-- /****** Object:  Index [checking]    Script Date: 22-02-2021 14:44:04 ******/
-- ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [checking] UNIQUE NONCLUSTERED 
-- (
	-- [EmployeeCode] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- GO
-- SET ANSI_PADDING ON
-- GO
-- /****** Object:  Index [code]    Script Date: 22-02-2021 14:44:04 ******/
-- ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [code] UNIQUE NONCLUSTERED 
-- (
	-- [EmployeeCode] ASC
-- )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
-- GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [myindex]    Script Date: 22-02-2021 14:44:04 ******/
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [myindex] UNIQUE NONCLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Rolechecking]    Script Date: 22-02-2021 14:44:04 ******/
ALTER TABLE [dbo].[RoleMaster] ADD  CONSTRAINT [Rolechecking] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [roleIndex]    Script Date: 22-02-2021 14:44:04 ******/
ALTER TABLE [dbo].[RoleMaster] ADD  CONSTRAINT [roleIndex] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CycleDurationSymbols] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OrganisationCycle] ADD  DEFAULT ((0)) FOR [IsDiscarded]
GO
ALTER TABLE [dbo].[OrganisationCycle] ADD  DEFAULT ((0)) FOR [IsProcessed]
GO
ALTER TABLE [dbo].[OrganizationObjectives] ADD  DEFAULT ((0)) FOR [IsDiscarded]
GO
ALTER TABLE [dbo].[CycleDurationSymbols]  WITH CHECK ADD  CONSTRAINT [FK_CycleDurationSymbols_CycleDurationMaster] FOREIGN KEY([CycleDurationId])
REFERENCES [dbo].[CycleDurationMaster] ([CycleDurationId])
GO
ALTER TABLE [dbo].[CycleDurationSymbols] CHECK CONSTRAINT [FK_CycleDurationSymbols_CycleDurationMaster]
GO
ALTER TABLE [dbo].[EmployeeContactDetail]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeContactDetail_Employees] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([EmployeeId])
GO
ALTER TABLE [dbo].[EmployeeContactDetail] CHECK CONSTRAINT [FK_EmployeeContactDetail_Employees]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_RoleMaster] FOREIGN KEY([RoleId])
REFERENCES [dbo].[RoleMaster] ([RoleId])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_RoleMaster]
GO
ALTER TABLE [dbo].[OrganisationCycle]  WITH CHECK ADD  CONSTRAINT [FK__Organisat__Cycle__3587F3E0] FOREIGN KEY([CycleDurationId])
REFERENCES [dbo].[CycleDurationMaster] ([CycleDurationId])
GO
ALTER TABLE [dbo].[OrganisationCycle] CHECK CONSTRAINT [FK__Organisat__Cycle__3587F3E0]
GO
ALTER TABLE [dbo].[OrganisationCycle]  WITH CHECK ADD  CONSTRAINT [FK__Organisat__Organ__3493CFA7] FOREIGN KEY([OrganisationId])
REFERENCES [dbo].[Organisations] ([OrganisationId])
GO
ALTER TABLE [dbo].[OrganisationCycle] CHECK CONSTRAINT [FK__Organisat__Organ__3493CFA7]
GO
ALTER TABLE [dbo].[OrganisationCycle]  WITH CHECK ADD  CONSTRAINT [FK_OrganisationCycle_CycleDurationSymbols] FOREIGN KEY([SymbolId])
REFERENCES [dbo].[CycleDurationSymbols] ([Id])
GO
ALTER TABLE [dbo].[OrganisationCycle] CHECK CONSTRAINT [FK_OrganisationCycle_CycleDurationSymbols]
GO
ALTER TABLE [dbo].[OrganizationObjectives]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationObjectives_ObjectivesMaster] FOREIGN KEY([ObjectiveId])
REFERENCES [dbo].[ObjectivesMaster] ([ObjectiveId])
GO
ALTER TABLE [dbo].[OrganizationObjectives] CHECK CONSTRAINT [FK_OrganizationObjectives_ObjectivesMaster]
GO
ALTER TABLE [dbo].[OrganizationObjectives]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationObjectives_OrganisationMaster] FOREIGN KEY([OrganisationId])
REFERENCES [dbo].[Organisations] ([OrganisationId])
GO
ALTER TABLE [dbo].[OrganizationObjectives] CHECK CONSTRAINT [FK_OrganizationObjectives_OrganisationMaster]
GO
ALTER TABLE [dbo].[PermissionMaster]  WITH CHECK ADD FOREIGN KEY([ModuleId])
REFERENCES [dbo].[ModuleMaster] ([ModuleId])
GO
ALTER TABLE [dbo].[PermissionRoleMapping]  WITH CHECK ADD FOREIGN KEY([PermissionId])
REFERENCES [dbo].[PermissionMaster] ([PermissionId])
GO
ALTER TABLE [dbo].[PermissionRoleMapping]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[RoleMaster] ([RoleId])
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteImage]    Script Date: 22-02-2021 14:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_DeleteImage]
(
@employeeId bigint
)
AS
Begin

Update UserDetail set ImagePath = null, ImageDetails= null where EmployeeId = @employeeId

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GenerateOrgCylceOnProcessed]    Script Date: 22-02-2021 14:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 -- EXEC [sp_GenerateOrgCylceOnProcessed]
CREATE   Procedure [dbo].[sp_GenerateOrgCylceOnProcessed]
AS
Begin


BEGIN TRY
BEGIN TRANSACTION;
EXEC sp_LogJobAudit 'sp_GenerateOrgCylceOnProcessed','Started','Execution started';
Declare @CycleDurationId bigint
Declare @RowCount int
Declare @CycleYear int
Declare @OrganisationId bigint
Declare @Count bigint
Declare @CycleLastDate datetime
Declare @CycleStartDate datetime
Declare @CycleEndDate datetime
Declare @SymbolId int
DECLARE @NewCycleYear int 

IF OBJECT_ID('TempDB.dbo.#TempCycleTable') IS NOT NULL
BEGIN
	DROP TABLE #TempCycleTable
END
CREATE TABLE #TempCycleTable  
(   
TempId int Identity (1,1),CycleDurationId bigint,SymbolId int,OrganisationId bigint,
IsActive bit,CycleStartDate datetime,CycleEndDate datetime,CycleYear int,IsDiscarded bit,IsProcessed bit 
) 
IF OBJECT_ID('TempDB.dbo.#TempGroupTable') IS NOT NULL
BEGIN
	DROP TABLE #TempGroupTable
END
CREATE TABLE #TempGroupTable  
(   
TempId int Identity (1,1) ,OrganisationId bigint,CycleDurationId bigint,CycleYear int
) 
 
 INSERT INTO #TempCycleTable (CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed)
 SELECT CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed FROM
 OrganisationCycle where IsActive=1 and IsDiscarded=0 and IsProcessed=0

 INSERT INTO #TempGroupTable (OrganisationId,CycleDurationId,CycleYear)
 Select OrganisationId,CycleDurationId,CycleYear  from #TempCycleTable group by OrganisationId,CycleDurationId,CycleYear 

 SELECT @RowCount= COUNT(*) FROM #TempGroupTable;
 DECLARE @RowCountString varchar(100) = CONVERT(varchar(10),@RowCount) +' Organisation(s) found to processed'
 EXEC sp_LogJobAudit 'sp_GenerateOrgCylceOnProcessed','InProgress', @RowCountString;

 IF(@RowCount>0) 
 BEGIN
	SET @Count=1;
	WHILE @Count <= @RowCount  
	 BEGIN  
		SET @OrganisationId=0;
		SET @CycleDurationId=0;
		SET @CycleYear=0;
		SET @CycleStartDate=null;
		SET @CycleEndDate= null;
		SELECT @SymbolId = 0;
		SET @NewCycleYear =0;

		SELECT @OrganisationId=OrganisationId,@CycleDurationId=CycleDurationId,@CycleYear=CycleYear FROM #TempGroupTable WHERE TempId=@Count;

		SELECT TOP 1 @CycleLastDate= DATEADD(dd, DATEDIFF(dd, 0, CycleEndDate), 0) FROM #TempCycleTable WHERE OrganisationId=@OrganisationId AND CycleDurationId=@CycleDurationId AND CycleYear=@CycleYear
		ORDER BY CycleEndDate DESC

		DECLARE @TodayDate datetime= DATEADD(dd, DATEDIFF(dd, 0, getdate()), 0);
		IF(@CycleLastDate=@TodayDate)
		BEGIN
			-- Mark processed the current cycle
			UPDATE OrganisationCycle SET IsActive=0, IsProcessed=1 ,IsDiscarded=0 WHERE OrganisationId=@OrganisationId AND CycleDurationId=@CycleDurationId AND CycleYear=@CycleYear
			
			-- Generate the new cycle
			DECLARE @Duration varchar(50)
			SELECT @Duration= CycleDuration FROM CycleDurationMaster where CycleDurationId=@CycleDurationId

			IF(@Duration='Quarterly')
			BEGIN
				SET @CycleStartDate= DATEADD(DAY, 1, @CycleLastDate);
				SET @CycleEndDate= DATEADD(DAY, -1, DATEADD(MONTH, 3, @CycleStartDate));
				SELECT @SymbolId = Id from CycleDurationSymbols where Symbol='Q1'
				SET @NewCycleYear =YEAR(@CycleStartDate);

				INSERT INTO OrganisationCycle(CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed,CreatedBy,CreatedOn)
				VALUES(@CycleDurationId,@SymbolId,@OrganisationId,1,@CycleStartDate,@CycleEndDate,@NewCycleYear,0,0,-1,getutcdate());

				SET @CycleStartDate= DATEADD(DAY, 1, @CycleEndDate);
				SET @CycleEndDate= DATEADD(DAY, -1, DATEADD(MONTH, 3, @CycleStartDate));
				SELECT @SymbolId = Id from CycleDurationSymbols where Symbol='Q2'

				INSERT INTO OrganisationCycle(CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed,CreatedBy,CreatedOn)
				VALUES(@CycleDurationId,@SymbolId,@OrganisationId,1,@CycleStartDate,@CycleEndDate,@NewCycleYear,0,0,-1,getutcdate());
				
				SET @CycleStartDate= DATEADD(DAY, 1, @CycleEndDate);
				SET @CycleEndDate= DATEADD(DAY, -1, DATEADD(MONTH, 3, @CycleStartDate));
				SELECT @SymbolId = Id from CycleDurationSymbols where Symbol='Q3'

				INSERT INTO OrganisationCycle(CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed,CreatedBy,CreatedOn)
				VALUES(@CycleDurationId,@SymbolId,@OrganisationId,1,@CycleStartDate,@CycleEndDate,@NewCycleYear,0,0,-1,getutcdate());
				
				SET @CycleStartDate= DATEADD(DAY, 1, @CycleEndDate);
				SET @CycleEndDate= DATEADD(DAY, -1, DATEADD(MONTH, 3, @CycleStartDate));
				SELECT @SymbolId = Id from CycleDurationSymbols where Symbol='Q4'

				INSERT INTO OrganisationCycle(CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed,CreatedBy,CreatedOn)
				VALUES(@CycleDurationId,@SymbolId,@OrganisationId,1,@CycleStartDate,@CycleEndDate,@NewCycleYear,0,0,-1,getutcdate());
			END;

			IF(@Duration='HalfYearly')
			BEGIN
				SET @CycleStartDate= DATEADD(DAY, 1, @CycleLastDate);
				SET @CycleEndDate= DATEADD(DAY, -1, DATEADD(MONTH, 6, @CycleStartDate));
				SELECT @SymbolId = Id from CycleDurationSymbols where Symbol='H1'
				SET @NewCycleYear =YEAR(@CycleStartDate);

				INSERT INTO OrganisationCycle(CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed,CreatedBy,CreatedOn)
				VALUES(@CycleDurationId,@SymbolId,@OrganisationId,1,@CycleStartDate,@CycleEndDate,@NewCycleYear,0,0,-1,getutcdate());

				SET @CycleStartDate= DATEADD(DAY, 1, @CycleEndDate);
				SET @CycleEndDate= DATEADD(DAY, -1, DATEADD(MONTH, 6, @CycleStartDate));
				SELECT @SymbolId = Id from CycleDurationSymbols where Symbol='H2'
				
				INSERT INTO OrganisationCycle(CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed,CreatedBy,CreatedOn)
				VALUES(@CycleDurationId,@SymbolId,@OrganisationId,1,@CycleStartDate,@CycleEndDate,@NewCycleYear,0,0,-1,getutcdate());
			

			END;

			IF(@Duration='Annually')
			BEGIN
				SET @CycleStartDate= DATEADD(DAY, 1, @CycleLastDate);
				SET @CycleEndDate= DATEADD(DAY, -1, DATEADD(YEAR, 1, @CycleStartDate));
				SELECT @SymbolId = Id from CycleDurationSymbols where Symbol='Y'
				SET @NewCycleYear =YEAR(@CycleStartDate);
				
				INSERT INTO OrganisationCycle(CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed,CreatedBy,CreatedOn)
				VALUES(@CycleDurationId,@SymbolId,@OrganisationId,1,@CycleStartDate,@CycleEndDate,@NewCycleYear,0,0,-1,getutcdate());
			END;

			IF(@Duration='ThreeYears')
			BEGIN
				SET @CycleStartDate= DATEADD(DAY, 1, @CycleLastDate);
				SET @CycleEndDate= DATEADD(DAY, -1, DATEADD(YEAR, 3, @CycleStartDate));
				SELECT @SymbolId = Id from CycleDurationSymbols where Symbol='Y3'
				SET @NewCycleYear =YEAR(@CycleStartDate);
				
				INSERT INTO OrganisationCycle(CycleDurationId,SymbolId,OrganisationId,IsActive,CycleStartDate,CycleEndDate,CycleYear,IsDiscarded,IsProcessed,CreatedBy,CreatedOn)
				VALUES(@CycleDurationId,@SymbolId,@OrganisationId,1,@CycleStartDate,@CycleEndDate,@NewCycleYear,0,0,-1,getutcdate());
			END;

			DECLARE @ProcessString varchar(100)= 'Processed for OrganisationId,CycleDurationId,CycleYear'+CONVERT(varchar(10),@OrganisationId)+','+CONVERT(varchar(10),@CycleDurationId)+','+CONVERT(varchar(10),@CycleYear);
			EXEC sp_LogJobAudit 'sp_GenerateOrgCylceOnProcessed','InProgress',@ProcessString;
		END

	    SET @Count = @Count + 1;  
	 END;  
 END
 COMMIT TRANSACTION;
 EXEC sp_LogJobAudit 'sp_GenerateOrgCylceOnProcessed','Completed', 'Job Successfully completed';
 END TRY
   BEGIN CATCH
		 IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		DECLARE @ErrorDetails varchar(500) = CONVERT(varchar(10),ERROR_LINE())+' Line, Details- '+ERROR_MESSAGE();
		EXEC sp_LogJobAudit 'sp_GenerateOrgCylceOnProcessed','Error', @ErrorDetails;
   END CATCH
END;
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetAllOrganisations]    Script Date: 22-02-2021 14:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [Sp_GetAllOrganisations] 
CREATE Procedure [dbo].[Sp_GetAllOrganisations]  
As BEGIN  
  
  IF OBJECT_ID('TempDB.dbo.#TempOrganisation') IS NOT NULL  
 BEGIN  
  drop table #TempOrganisation  
 END  
 IF OBJECT_ID('TempDB.dbo.#GroupTable') IS NOT NULL  
 BEGIN  
  drop table #GroupTable  
 END  
 DECLARE @cnt INT = 0;  
 DECLARE @count INT = 1;  
 DECLARE @Orgcount INT = 0;  
 DECLARE @UserCount INT = 0;  
 DECLARE @UserImage varchar(200);  
 DECLARE @HeadId bigint;  
 DECLARE @OrgId bigint=0;  
 DECLARE @Designation nvarchar(200);  
 DECLARE @OrgHeadName varchar(100);  

  DECLARE @GroupCount INT=1; 
  DECLARE @ParentOrgId bigint; 
  DECLARE @LevelId int; 
  
 CREATE TABLE #TempOrganisation  
 (   
  TempId int Identity (1,1) ,OrganisationId bigint,OrganisationName nvarchar(200),HeadCode bigint,OrganisationHead nvarchar(100),  
  Designation nvarchar(200),EmployeeCount int,HeadImage varchar(200),OrgLogo text,ParentId bigint,Level int,IsActive bit  
 )  

 CREATE TABLE #GroupTable  
 (   
	TempId int Identity (1,1) ,ParentId bigint,LevelId int
 )
  
  
 Insert INTO #TempOrganisation   
 Select [OrganisationId],[OrganisationName],[OrganisationHead],[OrganisationHead],'Designation',0,'HeadImage',[ImagePath],ParentId,0,IsActive from Organisations   
 where IsActive=1 AND IsDeleted=0 and ParentId=0  
 --And OrganisationId=24  
  
 WHILE @cnt < 100  
 BEGIN  
    
  Insert INTO #TempOrganisation   
  Select [OrganisationId],[OrganisationName],[OrganisationHead],[OrganisationHead],'Designation',0,'HeadImage',[ImagePath],ParentId,(@cnt+1),IsActive from Organisations   
  where IsActive=1 AND IsDeleted=0 and ParentId IN (Select [OrganisationId] FROM #TempOrganisation where Level=@cnt)  
     
   SET @cnt = @cnt + 1;  
 END;  
  
 SET @Orgcount = (Select Count(*) FROM #TempOrganisation)  
 WHILE @count <= @Orgcount  
 BEGIN  
  SET @OrgId=NULL;  
  SET @UserCount=0;  
  SET @HeadId='';  
  SET @Designation='';  
  SET @UserImage=''  
  SET @OrgHeadName=''  
  Select @OrgId= [OrganisationId],@HeadId=HeadCode From #TempOrganisation where TempId=@count  
  Select @UserImage= ImagePath,@Designation=Designation,@OrgHeadName=(FirstName+' '+LastName) FROM Employees where EmployeeId=@HeadId  
  SET @UserCount =(Select Count(*) FROM Employees where [OrganisationId]=@OrgId And IsActive=1)  
  UPDATE #TempOrganisation SET EmployeeCount=@UserCount,HeadImage=@UserImage,Designation=@Designation,  
  [OrganisationHead]= @OrgHeadName where [OrganisationId]=@OrgId  
  
  SET @count=@count+1  
 END;  

 SET @cnt=1;
 DECLARE @ChildCount int =0;
 INSERT INTO #GroupTable Select  ParentId,Level from #TempOrganisation  group by ParentId,Level Having ParentId>0 order by Level asc
 SET @GroupCount  =(SELECT COUNT(*) from #GroupTable)
   WHILE @cnt <= @GroupCount  
	 BEGIN  
		SET @ParentOrgId =0;
		SET @LevelId =0;
		SET @ChildCount =0;

		Select @ParentOrgId= ParentId,@LevelId=LevelId From #GroupTable where TempId=@GroupCount  
		Select @ChildCount= SUM(EmployeeCount) from #TempOrganisation where ParentId=@ParentOrgId
		UPDATE #TempOrganisation SET EmployeeCount=EmployeeCount+@ChildCount where OrganisationId=@ParentOrgId

		SET @GroupCount = @GroupCount - 1;  
	 END

	 Select * from #TempOrganisation

 DROP table #TempOrganisation  
 DROP table #GroupTable  
  
  
  
END;
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetAllOrganisations_SHIV]    Script Date: 22-02-2021 14:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [Sp_GetAllOrganisations_SHIV]  
CREATE Procedure [dbo].[Sp_GetAllOrganisations_SHIV]  
As BEGIN  
  
  IF OBJECT_ID('TempDB.dbo.#TempOrganisation') IS NOT NULL  
 BEGIN  
  drop table #TempOrganisation  
 END  
 DECLARE @cnt INT = 0;  
 DECLARE @count INT = 1;  
 DECLARE @Orgcount INT = 0;  
 DECLARE @UserCount INT = 0;  
 DECLARE @UserImage varchar(200);  
 DECLARE @HeadId bigint;  
 DECLARE @OrgId bigint=0;  
 DECLARE @Designation nvarchar(200);  
 DECLARE @OrgHeadName varchar(100);  
  
 CREATE TABLE #TempOrganisation  
 (   
  TempId int Identity (1,1) ,OrganisationId bigint,OrganisationName nvarchar(200),HeadCode bigint,OrganisationHead nvarchar(100),  
  Designation nvarchar(200),EmployeeCount int,HeadImage varchar(200),OrgLogo text,ParentId bigint,Level int,IsActive bit  
 )  
  
 Insert INTO #TempOrganisation   
 Select [OrganisationId],[OrganisationName],[OrganisationHead],[OrganisationHead],'Designation',0,'HeadImage',[ImagePath],ParentId,0,IsActive from Organisations   
 where IsActive=1 AND IsDeleted=0 and ParentId=0  
 --And OrganisationId=24  
  
 WHILE @cnt < 100  
 BEGIN  
    
  Insert INTO #TempOrganisation   
  Select [OrganisationId],[OrganisationName],[OrganisationHead],[OrganisationHead],'Designation',0,'HeadImage',[ImagePath],ParentId,(@cnt+1),IsActive from Organisations   
  where IsActive=1 AND IsDeleted=0 and ParentId IN (Select [OrganisationId] FROM #TempOrganisation where Level=@cnt)  
     
   SET @cnt = @cnt + 1;  
 END;  
  
 SET @Orgcount = (Select Count(*) FROM #TempOrganisation)  
 WHILE @count <= @Orgcount  
 BEGIN  
  SET @OrgId=NULL;  
  SET @UserCount=0;  
  SET @HeadId='';  
  SET @Designation='';  
  SET @UserImage=''  
  SET @OrgHeadName=''  
  Select @OrgId= [OrganisationId],@HeadId=HeadCode From #TempOrganisation where TempId=@count  
  Select @UserImage= ImagePath,@Designation=Designation,@OrgHeadName=(FirstName+' '+LastName) FROM Employees where EmployeeId=@HeadId  
  SET @UserCount =(Select Count(*) FROM Employees where [OrganisationId]=@OrgId)  
  UPDATE #TempOrganisation SET EmployeeCount=@UserCount,HeadImage=@UserImage,Designation=@Designation,  
  [OrganisationHead]= @OrgHeadName where [OrganisationId]=@OrgId  
  
  SET @count=@count+1  
 END;  
  
 Select * from #TempOrganisation  
 DROP table #TempOrganisation  
  
  
  
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ImportOkrResult]    Script Date: 22-02-2021 14:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec sp_GetImportOkrResult 13,24,2020;

CREATE Procedure [dbo].[sp_ImportOkrResult]
(
@OrgCycleId bigint,
@OrgId bigint,
@CycleYear int
)
AS
Begin

Declare @CycleDurationId bigint
Declare @SymbolId bigint
Declare @CycleDuration varchar(20)
Declare @CycleCount int
Declare @LastSymbolId int
Declare @LastCycleYear int

	 IF OBJECT_ID('TempDB.dbo.#TempOkrResult') IS NOT NULL
	BEGIN
	 drop table #TempOkrResult
	END
   
    CREATE TABLE #TempOkrResult
    ( 
      TempResultId int Identity (1,1) ,OrganisationCycleId bigint,SymbolId bigint,Symbol Char(10),CycleYear int,CycleStartDate DateTime,CycleEndDate DateTime
    )


set @CycleDurationId = (Select CycleDurationId from OrganisationCycle where OrganisationCycleId = @OrgCycleId and OrganisationId = @OrgId);
set @SymbolId = (Select SymbolId from OrganisationCycle where OrganisationCycleId = @OrgCycleId and OrganisationId = @OrgId);
  
  DECLARE @count INT;
  DECLARE @NewSymbolId int;
  DECLARE @NewCycleYear int;
  set @count = (Select count(OrganisationCycleId) from #TempOkrResult);

 if (@CycleDurationId = 1)

   BEGIN
  INSERT INTO #TempOkrResult ( OrganisationCycleId,SymbolId , Symbol,CycleYear,CycleStartDate,CycleEndDate)
  select top 4 OrganisationCycleId,OC.SymbolId, CDS.Symbol,OC.CycleYear,OC.CycleStartDate,OC.CycleEndDate
  from OrganisationCycle as OC inner join CycleDurationMaster as CDM on (OC.CycleDurationId = CDM.CycleDurationId)
  inner join  [CycleDurationSymbols] as CDS on (OC.SymbolId = CDS.Id)
  where OC.OrganisationId = @OrgId and OC.CycleDurationId = @CycleDurationId and OC.OrganisationCycleId < @OrgCycleId order by OC.OrganisationCycleId desc;
  
 
  End

if (@CycleDurationId = 2)
  
  BEGIN
  INSERT INTO #TempOkrResult ( OrganisationCycleId,SymbolId , Symbol,CycleYear,CycleStartDate,CycleEndDate)
  select top 2 OrganisationCycleId,OC.SymbolId, CDS.Symbol,OC.CycleYear,OC.CycleStartDate,OC.CycleEndDate
  from OrganisationCycle as OC inner join CycleDurationMaster as CDM on (OC.CycleDurationId = CDM.CycleDurationId)
  inner join  [CycleDurationSymbols] as CDS on (OC.SymbolId = CDS.Id)
  where OC.OrganisationId = @OrgId and OC.CycleDurationId = @CycleDurationId and OC.OrganisationCycleId < @OrgCycleId order by OC.OrganisationCycleId desc;
  

  End
if (@CycleDurationId = 3)
  
  BEGIN
  INSERT INTO #TempOkrResult ( OrganisationCycleId,SymbolId , Symbol,CycleYear,CycleStartDate,CycleEndDate)
  select top 1 OrganisationCycleId,OC.SymbolId, CDS.Symbol,OC.CycleYear,OC.CycleStartDate,OC.CycleEndDate
  from OrganisationCycle as OC inner join CycleDurationMaster as CDM on (OC.CycleDurationId = CDM.CycleDurationId)
  inner join  [CycleDurationSymbols] as CDS on (OC.SymbolId = CDS.Id)
  where OC.OrganisationId = @OrgId and OC.CycleDurationId = @CycleDurationId and OC.OrganisationCycleId < @OrgCycleId order by OC.OrganisationCycleId desc;
  
  End
if (@CycleDurationId = 4)
 
 BEGIN
  INSERT INTO #TempOkrResult ( OrganisationCycleId,SymbolId , Symbol,CycleYear,CycleStartDate,CycleEndDate)
  select top 1 OrganisationCycleId,OC.SymbolId, CDS.Symbol,OC.CycleYear,OC.CycleStartDate,OC.CycleEndDate
  from OrganisationCycle as OC inner join CycleDurationMaster as CDM on (OC.CycleDurationId = CDM.CycleDurationId)
  inner join  [CycleDurationSymbols] as CDS on (OC.SymbolId = CDS.Id)
  where OC.OrganisationId = @OrgId and OC.CycleDurationId = @CycleDurationId and OC.OrganisationCycleId < @OrgCycleId order by OC.OrganisationCycleId desc;
  

  End
  select OrganisationCycleId,Symbol,CycleYear,CycleStartDate,CycleEndDate from #TempOkrResult;

END
GO
/****** Object:  StoredProcedure [dbo].[sp_LogJobAudit]    Script Date: 22-02-2021 14:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[sp_LogJobAudit]
@JobName nvarchar(500) ,
@Status nvarchar(100),
@Details nvarchar(500)
AS BEGIN
	INSERT INTO JobsAudit(JobName,Status,Details,ExecutionDate,AuditDate) 
	VALUES(@JobName,@Status,@Details,GETDATE(),GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateImagePath]    Script Date: 22-02-2021 14:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_UpdateImagePath]
(
@Url Text,
@EmployeeId Bigint,
@imageDetail TEXT
)
AS
Begin

Update UserDetail set ImagePath = @Url, ImageDetails=@imageDetail where EmployeeId = @EmployeeId

END

GO

-- PostV1_Script starts here
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GoalTypeMaster')
begin
CREATE TABLE [dbo].[GoalTypeMaster](
	[GoalTypeId] [int] primary key IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
		[Description] [nvarchar](200) NULL,
		[IsActive] [bit] NULL,
		[IsDefault] [bit] NULL
		)
end

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'KrStatusMaster')
begin
CREATE TABLE [dbo].[KrStatusMaster](
	[KrStatusId] [int] primary key IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
		[Description] [nvarchar](200) NULL,
		[IsActive] [bit] NULL,
		[IsDefault] [bit] NULL
		)
end

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GoalStatusMaster')
begin
CREATE TABLE [dbo].[GoalStatusMaster](
	[GoalStatusId] [int] primary key IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
		[Description] [nvarchar](200) NULL,
		[IsActive] [bit] NULL,
		[IsDefault] [bit] NULL
		
)
end


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'MetricMaster')
begin
CREATE TABLE [dbo].[MetricMaster](
    [MetricId] [int] IDENTITY(1,1) Primary key NOT NULL,
    [Name] [nvarchar] (100) NOT NULL,
    [Description] [nvarchar] (200) NULL,
    [IsActive] [bit] NOT NULL Default (1),
	[IsDefault] [bit] NULL
);
end

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'MetricDataMaster')
begin
CREATE TABLE [dbo].[MetricDataMaster](
	[DataId] [int] IDENTITY(1,1) NOT NULL,
	[MetricId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[IsActive] [bit] NOT NULL,
	[Symbol] [nchar](1) NULL,
	[IsDefault] [bit] NULL
);
end

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'AssignmentTypeMaster')
begin
CREATE TABLE [dbo].[AssignmentTypeMaster](
    [AssignmentTypeId] [int] IDENTITY(1,1) Primary key NOT NULL,
    [Name] [nvarchar] (100) NOT NULL,
    [Description] [nvarchar] (200) NULL,
    [IsActive] [bit] NOT NULL Default (1),
	[IsDefault] [bit] NULL
);
end

IF  EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS  WHERE  TABLE_NAME = 'Employees' AND COLUMN_NAME = 'EmployeeCode')
BEGIN
	ALTER TABLE Employees
	ALTER COLUMN EmployeeCode varchar(30) NULL;

END
Go


IF NOT EXISTS(select top 1 * from GoalTypeMaster where Name='Team')
BEGIN
INSERT [dbo].[GoalTypeMaster] ([Name], [Description],[IsActive],[IsDefault]) VALUES ( N'Team', N'When the goal is assigned to team', 1,0)
END
IF NOT EXISTS(select top 1 1 from GoalTypeMaster where Name='Individual')
BEGIN
INSERT [dbo].[GoalTypeMaster] ([Name], [Description],[IsActive],[IsDefault]) VALUES(N'Individual', N'When the goal is assigned to an Individual', 1,1)
END

IF NOT EXISTS(select Top 1 1 from KrStatusMaster where Name='Pending')
BEGIN
INSERT [dbo].[KrStatusMaster] ([Name], [Description],[IsActive],[IsDefault]) VALUES ( N'Pending', N'When Contributor response is pending', 1,0)
END
IF NOT EXISTS(select Top 1 1 from KrStatusMaster where Name='Accepted')
BEGIN
INSERT [dbo].[KrStatusMaster] ([Name], [Description],[IsActive],[IsDefault]) VALUES(N'Accepted', N'When Contributor accepted the kr', 1,0)
END
IF NOT EXISTS(select Top 1 1 from KrStatusMaster where Name='Declined')
BEGIN
INSERT [dbo].[KrStatusMaster] ([Name], [Description],[IsActive],[IsDefault]) VALUES(N'Declined', N'When Contributor Declined the kr', 1,0)
END


IF NOT EXISTS(select Top 1 * from GoalStatusMaster where Name= N'Draft')
BEGIN
INSERT [dbo].[GoalStatusMaster] ([Name], [Description],[IsActive],[IsDefault]) VALUES ( N'Draft', N'When goal is there but is saved as draft', 1,0);
END
IF NOT EXISTS(select Top 1 * from GoalStatusMaster where Name= N'Public')
BEGIN
INSERT [dbo].[GoalStatusMaster] ([Name], [Description],[IsActive],[IsDefault]) VALUES(N'Public', N'When the goal is saved by user and it can be seen by others', 1,1)
END

set identity_insert [dbo].[MetricDataMaster] on
IF NOT EXISTS(select Top 1 * from MetricDataMaster where Name= N'Dollar')
BEGIN
INSERT [dbo].[MetricDataMaster] ([DataId], [MetricId], [Name], [Description], [IsActive], [Symbol], [IsDefault]) VALUES (1, 2, N'Dollar', N'US Currency', 1, N'$', 0)
END
IF NOT EXISTS(select Top 1 * from MetricDataMaster where Name= N'Euro')
BEGIN
INSERT [dbo].[MetricDataMaster] ([DataId], [MetricId], [Name], [Description], [IsActive], [Symbol], [IsDefault]) VALUES (2, 2, N'Euro', N'Europian Currency', 1, N'€', 0)
END

IF NOT EXISTS(select Top 1 * from MetricDataMaster where Name= N'Rupee')
BEGIN
INSERT [dbo].[MetricDataMaster] ([DataId], [MetricId], [Name], [Description], [IsActive], [Symbol], [IsDefault]) VALUES (3, 2, N'Rupee', N'Indian Currency', 1, N'₹', 0)
END

IF NOT EXISTS(select Top 1 * from MetricDataMaster where Name= N'Yen')
BEGIN
INSERT [dbo].[MetricDataMaster] ([DataId], [MetricId], [Name], [Description], [IsActive], [Symbol], [IsDefault]) VALUES (4, 2, N'Yen', N'Chinese Currency', 1, N'¥', 0)
END


IF NOT EXISTS(select Top 1 * from MetricDataMaster where Name= N'Pound')
BEGIN
INSERT [dbo].[MetricDataMaster] ([DataId], [MetricId], [Name], [Description], [IsActive], [Symbol], [IsDefault]) VALUES (5, 2, N'Pound', N'UK Currency', 1, N'£', 0)
END

set identity_insert [dbo].[MetricDataMaster] off

set identity_insert [dbo].[MetricMaster] on
IF NOT EXISTS(select Top 1 * from MetricMaster where Description= N'Percentage')
BEGIN
    INSERT [dbo].[MetricMaster] ([MetricId], [Name], [Description], [IsActive], [IsDefault]) VALUES (1, N'Percentage', N'Percentage', 1, 0)
END

IF NOT EXISTS(select Top 1 * from MetricMaster where Description= N'Currency')
BEGIN
INSERT [dbo].[MetricMaster] ([MetricId], [Name], [Description], [IsActive], [IsDefault]) VALUES (2, N'Currency', N'Currency', 1, 0)
END

IF NOT EXISTS(select Top 1 * from MetricMaster where Description= N'Numbers')
BEGIN
INSERT [dbo].[MetricMaster] ([MetricId], [Name], [Description], [IsActive], [IsDefault]) VALUES (3, N'Numbers', N'Numbers', 1, 0)
END
IF NOT EXISTS(select Top 1 * from MetricMaster where Description= N'Yes/No')
BEGIN
INSERT [dbo].[MetricMaster] ([MetricId], [Name], [Description], [IsActive], [IsDefault]) VALUES (4, N'Boolean', N'Yes/No', 1, 0)
END

IF NOT EXISTS(select Top 1 * from MetricMaster where Description= N'No Units')
BEGIN
INSERT [dbo].[MetricMaster] ([MetricId], [Name], [Description], [IsActive], [IsDefault]) VALUES (5, N'NoUnits', N'No Units', 1, 1)
END
set identity_insert [dbo].[MetricMaster] off

set identity_insert [dbo].[AssignmentTypeMaster] on

IF NOT EXISTS(select Top 1 * from AssignmentTypeMaster where Name= N'AsObjective')
BEGIN
INSERT [dbo].[AssignmentTypeMaster] ([AssignmentTypeId], [Name], [Description], [IsActive], [IsDefault]) VALUES (1, N'AsObjective', N'Any KR will be assigned as objective', 1, 0)
END
GO

IF NOT EXISTS(select Top 1 * from AssignmentTypeMaster where Name= N'WithParentObjective')
BEGIN
INSERT [dbo].[AssignmentTypeMaster] ([AssignmentTypeId], [Name], [Description], [IsActive], [IsDefault]) VALUES (2, N'WithParentObjective', N'Any KR will be assigned with any other objective', 1, 0)
END
GO

IF NOT EXISTS(select Top 1 * from AssignmentTypeMaster where Name= N'StandAlone')
BEGIN
INSERT [dbo].[AssignmentTypeMaster] ([AssignmentTypeId], [Name], [Description], [IsActive], [IsDefault]) VALUES (3, N'StandAlone', N'Any KR will be assigned as orphan without any objective', 1, 0)
END
GO

set identity_insert [dbo].[AssignmentTypeMaster] off
-- START SPRINT 2.9.0 B

IF NOT EXISTS(select top 1 * from GoalStatusMaster where Name='Archive')
BEGIN
INSERT [dbo].[GoalStatusMaster] ([Name], [Description],[IsActive],[IsDefault]) VALUES ( N'Archive', N'When the goal is not accepted/denied it is saved in archive after the cycle is locked', 1,0)
END

IF NOT EXISTS (select * from AssignmentTypeMaster where Description = 'Standalone' and AssignmentTypeId=1)
BEGIN
UPDATE AssignmentTypeMaster set Name='StandAlone', Description = 'Standalone', IsDefault=1 where AssignmentTypeId=1
END
GO

IF NOT EXISTS (select * from AssignmentTypeMaster where Description = 'With Parent Objective' and AssignmentTypeId=2)
BEGIN
UPDATE AssignmentTypeMaster set Description='With Parent Objective' where AssignmentTypeId=2
END
GO

IF NOT EXISTS (select * from AssignmentTypeMaster where Description = 'As Objective' and AssignmentTypeId=3)
BEGIN
UPDATE AssignmentTypeMaster set Name='AsObjective',Description='As Objective',IsActive=0 where AssignmentTypeId=3
END
GO

-- END SPRINT 2.9.0 B

-- START SPRINT 2.9.1 A
-------------------------------SHIV - 06/04/2021 - Start ----------------------------------------------
IF EXISTS(select * from OKRStatusMaster where Description = 'Goals are untouched. Concise goal outcomes may help.')
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Description = 'Objectives are untouched. Concise objective outcomes may help.' where Description = 'Goals are untouched. Concise goal outcomes may help.'
END

IF EXISTS(select * from OKRStatusMaster where Description = 'Goals in perilous state. Immediate attention required.')
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Description = 'Objectives in perilous state. Immediate attention required.' where Description = 'Goals in perilous state. Immediate attention required.'
END

IF EXISTS(select * from OKRStatusMaster where Description = 'Goals falling behind. Updating the progress is call of the hour.')
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Description = 'Objectives falling behind. Updating the progress is call of the hour.' where Description = 'Goals falling behind. Updating the progress is call of the hour.'
END

IF EXISTS(select * from OKRStatusMaster where Description = 'Goals progressing in the right direction. Keep up the consistency.')
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Description = 'Objectives progressing in the right direction. Keep up the consistency.' where Description = 'Goals progressing in the right direction. Keep up the consistency.'
END
-------------------------------SHIV - 06/04/2021 - End ----------------------------------------------


------------------------------- START - Team OKR Release Script -------------------------------

IF EXISTS(select * from OKRStatusMaster where Id = 1)
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Color='BDBDBD' where Id=1
END


IF EXISTS(select * from OKRStatusMaster where Id = 2)
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Color='FF2200' where Id=2
END

IF EXISTS(select * from OKRStatusMaster where Id = 3)
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Color='FFC200' where Id=3
END

Go



----------------------------- END - Team OKR Release Script -----------------------------------

-- END SPRINT 2.9.1 A

-- START DDL 2.9.1 C


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'ColorCodeMaster')
BEGIN
CREATE TABLE [dbo].[ColorCodeMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ColorCode] [varchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[isActive] [bit] NULL
) ON [PRIMARY]
END

GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'ColorCodeMaster' AND COLUMN_NAME= 'BackGroundColorCode') 
BEGIN
alter table ColorCodeMaster add BackGroundColorCode varchar(100) null
END

GO
	
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'organisations' AND COLUMN_NAME= 'BackGroundColorCode') 
BEGIN
alter table organisations add BackGroundColorCode varchar(100) null
END

GO
-- END DDL 2.9.1 C

-- START DML 2.9.1 C
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#626262')BEGIN INSERT INTO ColorCodeMaster(ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#626262',GETDATE(), 1059,1,'#E3E5E5')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#FFFFFF')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#FFFFFF',GETDATE(), 1059,1,'#39A3FA')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#B71C1C')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#B71C1C',GETDATE(), 1059,1,'#FFEBEE')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#7438BD')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#7438BD',GETDATE(), 1059,1,'#F3E5F5')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#3A6351')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#3A6351',GETDATE(), 1059,1,'#DAEFC7')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#9A5F1E')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#9A5F1E',GETDATE(), 1059,1,'#F6E7DC')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#BC0A69')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#BC0A69',GETDATE(), 1059,1,'#FCE4EC')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#167A89')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#167A89',GETDATE(), 1059,1,'#D3E4E7')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#565804')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#565804',GETDATE(), 1059,1,'#E7E8C1')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#B5372B')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#B5372B',GETDATE(), 1059,1,'#ECE2E1')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#B45141')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#B45141',GETDATE(), 1059,1,'#FFDCD7')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#7C4B13')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#7C4B13',GETDATE(), 1059,1,'#E4D5C3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#AA5909')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#AA5909',GETDATE(), 1059,1,'#F4E2D0')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#58650D')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#58650D',GETDATE(), 1059,1,'#D5DBB3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#C85454')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#C85454',GETDATE(), 1059,1,'#F5E1E1')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#A76F03')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#A76F03',GETDATE(), 1059,1,'#F6F3C6')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#1373C5')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#1373C5',GETDATE(), 1059,1,'#BDE0FE')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#5A6AD6')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#5A6AD6',GETDATE(), 1059,1,'#DCE0FA')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#054CA4')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#054CA4',GETDATE(), 1059,1,'#D6E2F1')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#098239')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#098239',GETDATE(), 1059,1,'#D3EEDE')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#E03DA9')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#E03DA9',GETDATE(), 1059,1,'#FBE2F2')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#A07432')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#A07432',GETDATE(), 1059,1,'#EFE5DC')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#3246AF')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#3246AF',GETDATE(), 1059,1,'#DEDEFF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#8A7401')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#8A7401',GETDATE(), 1059,1,'#E9EAD6')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#751785')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#751785',GETDATE(), 1059,1,'#E4DADC')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#72364D')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#72364D',GETDATE(), 1059,1,'#F6DCE2')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#52057B')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#52057B',GETDATE(), 1059,1,'#E7D8F3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#657312')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#657312',GETDATE(), 1059,1,'#E7EAD3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#87431D')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#87431D',GETDATE(), 1059,1,'#FAD6C7')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#184D47')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#184D47',GETDATE(), 1059,1,'#CCE4E4')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#A56859')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#A56859',GETDATE(), 1059,1,'#F0E3E0')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#FF3465')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#FF3465',GETDATE(), 1059,1,'#F6DDDD')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#AE2233')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#AE2233',GETDATE(), 1059,1,'#ECE7E7')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#A86434')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#A86434',GETDATE(), 1059,1,'#F3E0D3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#97750E')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#97750E',GETDATE(), 1059,1,'#EEE3C1')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#52462A')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#52462A',GETDATE(), 1059,1,'#F0ECE3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#983357')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#983357',GETDATE(), 1059,1,'#ECD7DF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#575788')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#575788',GETDATE(), 1059,1,'#E3E3F9')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#AB7A17')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#AB7A17',GETDATE(), 1059,1,'#FFEECC')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#894B4B')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#894B4B',GETDATE(), 1059,1,'#EDDFDF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#425F87')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#425F87',GETDATE(), 1059,1,'#DEECFF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#267A7A')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#267A7A',GETDATE(), 1059,1,'#D0E3E4')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#4F6396')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#4F6396',GETDATE(), 1059,1,'#E8F0F2')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#474F95')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#474F95',GETDATE(), 1059,1,'#E6E7EF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#098B8B')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#098B8B',GETDATE(), 1059,1,'#D3EAE2')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#115C5C')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#115C5C',GETDATE(), 1059,1,'#B5EAEA')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#03256C')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#03256C',GETDATE(), 1059,1,'#A2DBFA')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#635004')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#635004',GETDATE(), 1059,1,'#FFEDA3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#475915')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#475915',GETDATE(), 1059,1,'#D2E69C')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#19165B')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#19165B',GETDATE(), 1059,1,'#B8B5FF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#C70B0B')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#C70B0B',GETDATE(), 1059,1,'#FFD4D4')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#0A4E92')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#0A4E92',GETDATE(), 1059,1,'#D3E6F8')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#782150')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#782150',GETDATE(), 1059,1,'#F2E5F4')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#6C0E0E')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#6C0E0E',GETDATE(), 1059,1,'#EEDADA')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#AA3801')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#AA3801',GETDATE(), 1059,1,'#FFD3BD')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#B74242')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#B74242',GETDATE(), 1059,1,'#F8DADA')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#78601F')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#78601F',GETDATE(), 1059,1,'#F0E7D0')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#794C22')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#794C22',GETDATE(), 1059,1,'#FAE4C5')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#605A0A')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#605A0A',GETDATE(), 1059,1,'#E3E0AF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#335E09')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#335E09',GETDATE(), 1059,1,'#E1EAD8')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#8F5C0B')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#8F5C0B',GETDATE(), 1059,1,'#F3E9D9')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#CE4F79')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#CE4F79',GETDATE(), 1059,1,'#FFEAF1')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#19456B')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#19456B',GETDATE(), 1059,1,'#D3E0EA')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#276678')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#276678',GETDATE(), 1059,1,'D0E8F2')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#007B6E')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#007B6E',GETDATE(), 1059,1,'#D8F4F4')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#204051')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#204051',GETDATE(), 1059,1,'#CAE8D5')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#4D4646')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#4D4646',GETDATE(), 1059,1,'#F5EAEA')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#151965')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#151965',GETDATE(), 1059,1,'#B9E7DB')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#2C47D6')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#2C47D6',GETDATE(), 1059,1,'#C6CBEF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#156B49')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#156B49',GETDATE(), 1059,1,'#D0E7E3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#52524E')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#52524E',GETDATE(), 1059,1,'#E9E9E5')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#574E6D')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#574E6D',GETDATE(), 1059,1,'#ECE7F9')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#FB7800')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#FB7800',GETDATE(), 1059,1,'#FFEBCF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#FF5200')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#FF5200',GETDATE(), 1059,1,'#F3DFD6')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#C15050')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#C15050',GETDATE(), 1059,1,'#ECE4E5')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#447872')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#447872',GETDATE(), 1059,1,'#D9EEEC')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#1E212D')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#1E212D',GETDATE(), 1059,1,'#D1D9FB')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#BF3AE0')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#BF3AE0',GETDATE(), 1059,1,'#F3DDFD')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#184F05')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#184F05',GETDATE(), 1059,1,'#CCEABB')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#793A0C')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#793A0C',GETDATE(), 1059,1,'#F3D8D4')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#A4452A')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#A4452A',GETDATE(), 1059,1,'#FFE1C3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#283078')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#283078',GETDATE(), 1059,1,'#CCD4F6')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#474AE5')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#474AE5',GETDATE(), 1059,1,'#D6E5F8')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#CB4C04')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#CB4C04',GETDATE(), 1059,1,'#FFE3B7')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#4842FB')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#4842FB',GETDATE(), 1059,1,'#DCDBFF')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#B77200')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#B77200',GETDATE(), 1059,1,'#FFE7BE')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#9A1075')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#9A1075',GETDATE(), 1059,1,'#FFC0EE')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#276249')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#276249',GETDATE(), 1059,1,'#BFE0AB')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#41858E')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#41858E',GETDATE(), 1059,1,'#CAE2D9')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#3C0C79')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#3C0C79',GETDATE(), 1059,1,'#E2D4F3')END
IF NOT EXISTS (SELECT * FROM ColorCodeMaster WHERE ColorCode = '#7F8203')BEGIN INSERT INTO ColorCodeMaster (ColorCode,CreatedOn,CreatedBy,isActive,BackGroundColorCode) VALUES ('#7F8203',GETDATE(), 1059,1,'#E5EECB')END


-- END DML 2.9.1 C
Go


-- START DML 2.9.1 C

IF EXISTS(select * from OKRStatusMaster where Id = 1)
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Description = 'OKR(s) are untouched. Concise objective outcomes may help.' where Id=1
END

 

IF EXISTS(select * from OKRStatusMaster where Id = 2)
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Description = 'OKR(s) in perilous state. Immediate attention required.' where Id = 2
END

 

IF EXISTS(select * from OKRStatusMaster where Id = 3)
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Description = 'OKR(s) falling behind. Updating the progress is call of the hour.' where Id = 3
END

 

IF EXISTS(select * from OKRStatusMaster where Id = 4)
BEGIN
UPDATE [dbo].[OKRStatusMaster] set Description = 'OKR(s) progressing in the right direction. Keep up the consistency.' where Id = 4
END

-- END DML 2.9.1 C

------------------------------------------Missing Script while doing Migration ------------------------------------------

IF NOT (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'DirectReporteesFilter'))

BEGIN

Create table DirectReporteesFilter
(
Id INT Identity,
StatusName varchar(50),
Description nvarchar(200),
Code varchar(50),
Color varchar(100),
IsActive Bit
)

END
GO

IF NOT EXISTS(select top 1 * from DirectReporteesFilter where Code = 'Most Progress')
BEGIN
INSERT INTO DirectReporteesFilter VALUES('Most Progress','Most Progress Filter','Most Progress','',1)
END
GO

IF NOT EXISTS(select top 1 * from DirectReporteesFilter where Code = 'Least Progress')
BEGIN
INSERT INTO DirectReporteesFilter VALUES('Least Progress','Least Progress Filter','Least Progress','',1)
END
GO

IF NOT EXISTS(select top 1 * from DirectReporteesFilter where Code = 'Most Contribution')
BEGIN
INSERT INTO DirectReporteesFilter VALUES('Most Contribution','Most Contribution Filter','Most Contribution','',1)
END
GO

IF NOT EXISTS(select top 1 * from DirectReporteesFilter where Code = 'Least Contribution')
BEGIN
INSERT INTO DirectReporteesFilter VALUES('Least Contribution','Least Contribution Filter','Least Contribution','',1)
END
GO

IF NOT (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'OkrTypeFilter'))
BEGIN

Create table OkrTypeFilter
(
Id INT Identity,
StatusName varchar(50),
Description nvarchar(200),
Code varchar(50),
Color varchar(100),
IsActive Bit
)

END

GO

IF NOT EXISTS(select top 1 * from OkrTypeFilter where Code = 'Assigned')
BEGIN
INSERT INTO OkrTypeFilter VALUES('Assigned','Only Assigned Filter','Assigned','',1)
END
GO

IF NOT EXISTS(select top 1 * from OkrTypeFilter where Code = 'Aligned')
BEGIN
INSERT INTO OkrTypeFilter VALUES('Aligned','Only Aligned Filter','Aligned','',1)
END
GO

IF NOT EXISTS(select top 1 * from OkrTypeFilter where Code = 'Standalone')
BEGIN
INSERT INTO OkrTypeFilter VALUES('Standalone','Only Standalone Filter','Standalone','',1)
END
GO

IF NOT EXISTS(select top 1 * from OkrTypeFilter where Code = 'Individual')
BEGIN
INSERT INTO OkrTypeFilter VALUES('Individual','Only Individual Filter','Individual','',1)
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'organisations' AND COLUMN_NAME= 'Colorcode')
BEGIN
alter table organisations add Colorcode varchar(100) null
END

GO

GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'UserToken' AND COLUMN_NAME= 'Token') 
BEGIN
ALTER TABLE UserToken ALTER COLUMN Token NVARCHAR(MAX) NOT NULL
END
GO

-- Suggested by AlokP as it was missed in V2
--------------------------------------------
UPDATE PermissionRoleMapping SET IsActive = 0 WHERE PermissionId IN (select PermissionId from PermissionMaster Where Permission = 'View MyGoal')
GO
--------------------------------------------

----------- START DML 2.9.4
IF NOT EXISTS(select top 1 * from PermissionMaster where Permission = 'Coach')
BEGIN
INSERT INTO PermissionMaster VALUES (1,'Coach','Coach',1,331,'2021-08-25 17:54:52.930',NULL,NULL)
END
GO

----------END DML 2.9.4

