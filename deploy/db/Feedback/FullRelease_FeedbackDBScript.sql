
/****** Object:  Table [dbo].[Comment]    Script Date: 22-02-2021 14:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [bigint] IDENTITY(1,1) NOT NULL,
	[Comments] [text] NOT NULL,
	[FeedbackDetailId] [bigint] NOT NULL,
	[ParentCommentId] [bigint] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriteriaFeedbackMapping]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriteriaFeedbackMapping](
	[CriteriaFeedbackMappingId] [bigint] IDENTITY(1,1) NOT NULL,
	[FeedbackDetailId] [bigint] NULL,
	[CriteriaMasterId] [bigint] NULL,
	[Score] [decimal](10, 2) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CriteriaFeedbackMappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriteriaMaster]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriteriaMaster](
	[CriteriaMasterId] [bigint] IDENTITY(1,1) NOT NULL,
	[CriteriaTypeId] [int] NULL,
	[CriteriaName] [nvarchar](30) NULL,
	[OrganisationId] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CriteriaMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CriteriaTypeMaster]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CriteriaTypeMaster](
	[CriteriaTypeId] [int] IDENTITY(1,1) NOT NULL,
	[CriteriaTypeName] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CriteriaTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 22-02-2021 14:17:07 ******/
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
/****** Object:  Table [dbo].[FeedbackDetail]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackDetail](
	[FeedbackDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[FeedbackRequestId] [bigint] NOT NULL,
	[FeedbackOnTypeId] [int] NOT NULL,
	[FeedbackOnId] [bigint] NOT NULL,
	[SharedRemark] [text] NULL,
	[IsOneToOneRequested] [bit] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[CriteriaTypeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackOnTypeMaster]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackOnTypeMaster](
	[FeedbackOnTypeId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackOnTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackRequest]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackRequest](
	[FeedbackRequestId] [bigint] IDENTITY(1,1) NOT NULL,
	[RaisedTypeId] [int] NOT NULL,
	[RaisedForId] [bigint] NOT NULL,
	[FeedbackById] [bigint] NOT NULL,
	[FeedbackOnTypeId] [int] NOT NULL,
	[FeedbackOnId] [bigint] NOT NULL,
	[RequestRemark] [text] NULL,
	[FeedbackRequestType] [int] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[Status] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OneToOneDetail]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OneToOneDetail](
	[OneToOneDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestType] [int] NOT NULL,
	[RequestId] [bigint] NOT NULL,
	[RequestedTo] [bigint] NOT NULL,
	[RequestedFrom] [bigint] NOT NULL,
	[OneToOneRemark] [text] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OneToOneDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RaisedTypeMaster]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaisedTypeMaster](
	[RaisedTypeId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RaisedTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestMaster]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestMaster](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[RequestName] [nvarchar](250) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [requestMaster_pk] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusMaster]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusMaster](
	[StatusId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ErrorLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[FeedbackDetail] ADD  DEFAULT ((1)) FOR [IsOneToOneRequested]
GO
ALTER TABLE [dbo].[FeedbackDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[FeedbackDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FeedbackDetail] ADD  DEFAULT ((0)) FOR [CriteriaTypeId]
GO
ALTER TABLE [dbo].[FeedbackOnTypeMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[FeedbackRequest] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[FeedbackRequest] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OneToOneDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[OneToOneDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OneToOneDetail] ADD  DEFAULT ((2)) FOR [Status]
GO
ALTER TABLE [dbo].[RaisedTypeMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[RequestMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[StatusMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD FOREIGN KEY([FeedbackDetailId])
REFERENCES [dbo].[FeedbackDetail] ([FeedbackDetailId])
GO
ALTER TABLE [dbo].[CriteriaFeedbackMapping]  WITH CHECK ADD FOREIGN KEY([CriteriaMasterId])
REFERENCES [dbo].[CriteriaMaster] ([CriteriaMasterId])
GO
ALTER TABLE [dbo].[CriteriaFeedbackMapping]  WITH CHECK ADD FOREIGN KEY([FeedbackDetailId])
REFERENCES [dbo].[FeedbackDetail] ([FeedbackDetailId])
GO
ALTER TABLE [dbo].[CriteriaMaster]  WITH CHECK ADD FOREIGN KEY([CriteriaTypeId])
REFERENCES [dbo].[CriteriaTypeMaster] ([CriteriaTypeId])
GO
ALTER TABLE [dbo].[FeedbackDetail]  WITH CHECK ADD FOREIGN KEY([FeedbackRequestId])
REFERENCES [dbo].[FeedbackRequest] ([FeedbackRequestId])
GO
ALTER TABLE [dbo].[FeedbackDetail]  WITH CHECK ADD FOREIGN KEY([FeedbackOnTypeId])
REFERENCES [dbo].[FeedbackOnTypeMaster] ([FeedbackOnTypeId])
GO
ALTER TABLE [dbo].[FeedbackRequest]  WITH CHECK ADD FOREIGN KEY([FeedbackOnTypeId])
REFERENCES [dbo].[FeedbackOnTypeMaster] ([FeedbackOnTypeId])
GO
ALTER TABLE [dbo].[FeedbackRequest]  WITH CHECK ADD FOREIGN KEY([RaisedTypeId])
REFERENCES [dbo].[RaisedTypeMaster] ([RaisedTypeId])
GO
ALTER TABLE [dbo].[FeedbackRequest]  WITH CHECK ADD FOREIGN KEY([Status])
REFERENCES [dbo].[StatusMaster] ([StatusId])
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllFeedbackCount]    Script Date: 22-02-2021 14:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetAllFeedbackCount]
(
@EmployeeId Bigint

)
AS
BEGIN

IF OBJECT_ID('TempDB.dbo.#TempUserFeedback') IS NOT NULL      
 BEGIN      
  drop table #TempUserFeedback      
 END      

CREATE TABLE #TempUserFeedback      
    (       
      TempUserFeedbackId int Identity (1,1) ,EmployeeId bigint,FeedbackType nvarchar(250),CountFeedbackType INT      
    )     

	 Insert into #TempUserFeedback (EmployeeId,FeedbackType,CountFeedbackType) 
	 select  DISTINCT RequestedFrom AS EmployeeId,'One On One Requested' As FeedbackType , Count(RequestedFrom) AS  CountFeedbackType  
	 from OneToOneDetail where RequestedTo = @EmployeeId and IsActive = 1 Group by  RequestedFrom
	 
	  Insert into #TempUserFeedback (EmployeeId,FeedbackType,CountFeedbackType) 
	 select DISTINCT  FeedbackById As EmployeeId,'Requested'  As FeedbackType,Count(FeedbackById) AS CountFeedbackType 
	 from FeedbackRequest where RaisedForId = @EmployeeId and IsActive = 1 Group by  FeedbackById

	  Insert into #TempUserFeedback (EmployeeId,FeedbackType,CountFeedbackType) 
	 select DISTINCT  RaisedForId As EmployeeId,'Shared'  As FeedbackType,Count(FeedbackById) AS CountFeedbackType  
	 from FeedbackRequest where FeedbackById = @EmployeeId and IsActive = 1 and Status = 3 Group by  RaisedForId


	 select DISTINCT (EmployeeId),FeedbackType,CountFeedbackType from #TempUserFeedback



END

GO




SET IDENTITY_INSERT [dbo].[CriteriaTypeMaster] ON 
GO
INSERT [dbo].[CriteriaTypeMaster] ([CriteriaTypeId], [CriteriaTypeName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (1, N'Praise', CAST(N'2020-12-09T11:42:24.900' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaTypeMaster] ([CriteriaTypeId], [CriteriaTypeName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (2, N'Growth Opportunity', CAST(N'2020-12-09T11:42:24.900' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaTypeMaster] ([CriteriaTypeId], [CriteriaTypeName], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (3, N'Okr Feedback', CAST(N'2020-12-09T11:42:24.900' AS DateTime), 620, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[CriteriaTypeMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[CriteriaMaster] ON 
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (1, 1, N'Attitude', 0, CAST(N'2020-12-09T11:49:55.963' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (2, 1, N'Intellect', 0, CAST(N'2020-12-09T11:49:55.977' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (3, 1, N'Professionalism', 0, CAST(N'2020-12-09T11:49:55.977' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (4, 1, N'Team Ethics', 0, CAST(N'2020-12-09T11:49:55.977' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (5, 1, N'Leadership', 0, CAST(N'2020-12-09T11:49:55.977' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (6, 1, N'Ownership', 0, CAST(N'2020-12-09T11:49:55.977' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (7, 2, N'Attitude', 0, CAST(N'2020-12-09T11:51:10.290' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (8, 2, N'Intellect', 0, CAST(N'2020-12-09T11:51:10.307' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (9, 2, N'Professionalism', 0, CAST(N'2020-12-09T11:51:10.307' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (10, 2, N'Team Ethics', 0, CAST(N'2020-12-09T11:51:10.307' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (11, 2, N'Leadership', 0, CAST(N'2020-12-09T11:51:10.307' AS DateTime), 620, NULL, NULL, 1)
GO
INSERT [dbo].[CriteriaMaster] ([CriteriaMasterId], [CriteriaTypeId], [CriteriaName], [OrganisationId], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (12, 2, N'Ownership', 0, CAST(N'2020-12-09T11:51:10.307' AS DateTime), 620, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[CriteriaMaster] OFF
GO
INSERT [dbo].[FeedbackOnTypeMaster] ([FeedbackOnTypeId], [Name], [IsActive]) VALUES (1, N'OKR', 1)
GO
INSERT [dbo].[FeedbackOnTypeMaster] ([FeedbackOnTypeId], [Name], [IsActive]) VALUES (2, N'KR', 1)
GO
INSERT [dbo].[FeedbackOnTypeMaster] ([FeedbackOnTypeId], [Name], [IsActive]) VALUES (3, N'Personal', 1)
GO
INSERT [dbo].[RaisedTypeMaster] ([RaisedTypeId], [Name], [IsActive]) VALUES (1, N'User', 1)
GO
INSERT [dbo].[RaisedTypeMaster] ([RaisedTypeId], [Name], [IsActive]) VALUES (2, N'Team', 1)
GO
INSERT [dbo].[RaisedTypeMaster] ([RaisedTypeId], [Name], [IsActive]) VALUES (3, N'Organisation', 1)
GO
SET IDENTITY_INSERT [dbo].[RequestMaster] ON 
GO
INSERT [dbo].[RequestMaster] ([RequestId], [RequestName], [IsActive]) VALUES (1, N'Okr', 1)
GO
INSERT [dbo].[RequestMaster] ([RequestId], [RequestName], [IsActive]) VALUES (2, N'Kr', 1)
GO
INSERT [dbo].[RequestMaster] ([RequestId], [RequestName], [IsActive]) VALUES (3, N'Feedback', 1)
GO
INSERT [dbo].[RequestMaster] ([RequestId], [RequestName], [IsActive]) VALUES (4, N'Personal', 1)
GO
SET IDENTITY_INSERT [dbo].[RequestMaster] OFF
GO
INSERT [dbo].[StatusMaster] ([StatusId], [Name], [IsActive]) VALUES (1, N'Initiated', 1)
GO
INSERT [dbo].[StatusMaster] ([StatusId], [Name], [IsActive]) VALUES (2, N'In-Progress', 1)
GO
INSERT [dbo].[StatusMaster] ([StatusId], [Name], [IsActive]) VALUES (3, N'Shared', 1)
GO
INSERT [dbo].[StatusMaster] ([StatusId], [Name], [IsActive]) VALUES (4, N'Cancel Request', 1)
GO

-- PostV1_Script starts here
-- START DML  2.9.1 C

IF NOT EXISTS(SELECT TOP 1 * FROM [FeedbackOnTypeMaster] where [Name] = 'Team')
BEGIN
Insert into FeedbackOnTypeMaster Values(4,'Team', 1)
END
GO






-- END DML 2.9.1 C

--\ir ./Sprint1/Feedback_Release_Patch.sql

-- No Change for 2.9.4
