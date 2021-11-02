
/****** Object:  Table [dbo].[Constant]    Script Date: 22-02-2021 14:54:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Constant](
	[ConstantId] [bigint] IDENTITY(1,1) NOT NULL,
	[ConstantName] [nvarchar](500) NULL,
	[ConstantValue] [nvarchar](500) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ConstantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[LogId] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[PageName] [nvarchar](100) NOT NULL,
	[FunctionName] [nvarchar](100) NOT NULL,
	[ApplicationName] [nvarchar](100) NOT NULL,
	[ErrorDetail] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoalKey]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalKey](
	[GoalKeyId] [bigint] IDENTITY(1,1) NOT NULL,
	[GoalObjectiveId] [bigint] NOT NULL,
	[KeyDescription] [nvarchar](max) NOT NULL,
	[Score] [decimal](10, 2) NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[ImportedType] [int] NULL,
	[ImportedId] [bigint] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Progress] [int] NULL,
	[Source] [bigint] NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
 CONSTRAINT [goalKey_pk] PRIMARY KEY CLUSTERED 
(
	[GoalKeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoalKeyAudit]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalKeyAudit](
	[GoalKeyAuditId] [bigint] IDENTITY(1,1) NOT NULL,
	[UpdatedGoalKeyId] [bigint] NULL,
	[UpdatedColumn] [nvarchar](250) NULL,
	[OldValue] [nvarchar](max) NULL,
	[NewValue] [nvarchar](max) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[GoalKeyAuditId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoalObjective]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoalObjective](
	[GoalObjectiveId] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
	[IsPrivate] [bit] NULL,
	[ObjectiveName] [text] NOT NULL,
	[ObjectiveDescription] [text] NULL,
	[ObjectiveCycleId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[ImportedType] [int] NULL,
	[ImportedId] [bigint] NULL,
	[Score] [decimal](10, 2) NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Year] [int] NULL,
	[Progress] [int] NULL,
	[Source] [bigint] NOT NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [goalObjective_pk] PRIMARY KEY CLUSTERED 
(
	[GoalObjectiveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageMaster]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageMaster](
	[MessageMasterId] [int] IDENTITY(1,1) NOT NULL,
	[MessageDesc] [nvarchar](1000) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MessageMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[okrAutoSubmitLog]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[okrAutoSubmitLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LastTransaction] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfGoalCreation]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfGoalCreation](
	[TypeOfGoalCreationId] [bigint] IDENTITY(1,1) NOT NULL,
	[PrimaryText] [text] NOT NULL,
	[SecondaryText] [text] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [typeOfGoalCreation_pk] PRIMARY KEY CLUSTERED 
(
	[TypeOfGoalCreationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnLockLog]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnLockLog](
	[UnLockLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[Year] [int] NULL,
	[Cycle] [int] NULL,
	[EmployeeId] [bigint] NULL,
	[LockedOn] [datetime] NULL,
	[LockedTill] [datetime] NULL,
	[CreatedBy] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Status] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [unLockLog_pk] PRIMARY KEY CLUSTERED 
(
	[UnLockLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Constant] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Constant] ADD  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Constant] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ErrorLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[GoalKey] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[GoalKey] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GoalKey] ADD  DEFAULT ((0)) FOR [Source]
GO
ALTER TABLE [dbo].[GoalKey] ADD  DEFAULT ((0)) FOR [EmployeeId]
GO
ALTER TABLE [dbo].[GoalObjective] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[GoalObjective] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[GoalObjective] ADD  DEFAULT ((0)) FOR [Source]
GO
ALTER TABLE [dbo].[GoalObjective] ADD  DEFAULT ((0)) FOR [Sequence]
GO
ALTER TABLE [dbo].[TypeOfGoalCreation] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[TypeOfGoalCreation] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UnLockLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UnLockLog] ADD  DEFAULT ((1)) FOR [IsActive]
GO
-- ALTER TABLE [dbo].[GoalKey]  WITH CHECK ADD FOREIGN KEY([GoalObjectiveId])
-- REFERENCES [dbo].[GoalObjective] ([GoalObjectiveId])
-- GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAllLevelContributors]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [sp_GetAllLevelContributors] 2,2198,620    
--exec [DeleteAllLevelContributors] 2,2198,620    
--use Okr_Service_QA  
--Ask Alok or Shiv Before change in proc.  
CREATE Procedure [dbo].[sp_DeleteAllLevelContributors]      
   (      
 @GoalType int,      
 @GoalId bigint,      
 @EmpId Bigint      
 )      
 AS      
 BEGIN      
    
    DECLARE @GoalKeyId BIGINT, @keyCount INT,@GoalCount INT,@StartGoalIndex INT,@StartKeyIndex INT,@GoalObjectiveId BigInt, @EmployeeId BigInt, @ObjLevel int;    
    IF OBJECT_ID('TempDB.dbo.#TempAllLevelEmpRecord') IS NOT NULL          
    BEGIN          
      Drop Table #TempAllLevelEmpRecord          
    END          
    CREATE TABLE #TempAllLevelEmpRecord          
    (           
      TempGoalId int Identity (1,1) ,GoalId bigint,GoalImportedId bigint,EmployeeId bigint, ObjLabel int          
    )       
 IF OBJECT_ID('TempDB.dbo.#TempAllLevelEmpRecordFromKey') IS NOT NULL          
    BEGIN          
      Drop Table #TempAllLevelEmpRecordFromKey          
    END          
    CREATE TABLE #TempAllLevelEmpRecordFromKey          
    (           
      TempGoalIdFromKey int Identity (1,1) ,GoalIdFromKey bigint,GoalImportedIdFromKey bigint,EmployeeIdFromKey bigint, ObjLabelFromKey int          
    )       
 IF OBJECT_ID('TempDB.dbo.#TempAllLevelGoalKeyRecord') IS NOT NULL          
    BEGIN          
      Drop Table #TempAllLevelGoalKeyRecord         
    END          
    CREATE TABLE #TempAllLevelGoalKeyRecord          
    (           
      TempGoalKeyId int Identity (1,1) ,GoalKeyId bigint         
    )       
    
    Insert INTO #TempAllLevelEmpRecord EXECUTE  [sp_GetAllLevelContributors] @GoalType,@GoalId,@EmpId;    
 Set @GoalCount = (Select Count(*) from #TempAllLevelEmpRecord);    
 Set @StartGoalIndex = (1);    
 Set @StartKeyIndex = (1);    
    IF (@GoalType = 1)      
    BEGIN      
     While (@StartGoalIndex <= @GoalCount)    
     Begin    
   Set @GoalObjectiveId = (select GoalId from #TempAllLevelEmpRecord where TempGoalId = @StartGoalIndex);    
   Set @EmployeeId = (select EmployeeId from #TempAllLevelEmpRecord where TempGoalId = @StartGoalIndex);    
   Set @ObjLevel = (select ObjLabel from #TempAllLevelEmpRecord where TempGoalId = @StartGoalIndex)  
   If (@ObjLevel > 0)  
     Begin  
      Insert INTO #TempAllLevelGoalKeyRecord (GoalKeyId) (Select GoalKeyId from GoalKey where GoalObjectiveId = @GoalObjectiveId and IsActive = 1 and EmployeeId = @EmployeeId);    
      Set @keyCount = (Select Count(*) from #TempAllLevelGoalKeyRecord);    
      UPDATE GoalObjective set IsActive = 0, UpdatedOn = GETDATE() WHERE GoalObjectiveId = @GoalObjectiveId and EmployeeId = @EmpId;      
       While (@StartKeyIndex <= @keyCount)    
        Begin    
     Set @GoalKeyId = (select GoalKeyId from #TempAllLevelGoalKeyRecord where TempGoalKeyId = @StartKeyIndex);    
     UPDATE GoalKey set IsActive = 0, UpdatedOn = GETDATE() WHERE  GoalKeyId = @GoalKeyId and EmployeeId = @EmployeeId;    
     Set @StartKeyIndex = (@StartKeyIndex + 1);    
        End   
  End  
  Set @StartGoalIndex = (@StartGoalIndex + 1);  
     END    
    END      
    ELSE IF (@GoalType = 2)      
    BEGIN   
	--select * from #TempAllLevelEmpRecord;
    While (@StartGoalIndex <= @GoalCount)    
     Begin    
   
    Set @GoalKeyId = (select GoalId from #TempAllLevelEmpRecord where TempGoalId = @StartGoalIndex);    
    Set @EmployeeId = (select EmployeeId from #TempAllLevelEmpRecord where TempGoalId = @StartGoalIndex);  
    Set @ObjLevel = (select ObjLabel from #TempAllLevelEmpRecord where TempGoalId = @StartGoalIndex)  
    Print @GoalKeyId ;Print @EmployeeId ;Print @ObjLevel;
    if (@ObjLevel > 0)  
      Begin  
  
  
    Set @GoalObjectiveId = (select GoalObjectiveId from GoalKey where GoalKeyId = @GoalKeyId);    
	--print @GoalObjectiveId;
    Set @keyCount = (Select COUNT(*) FROM GoalKey where GoalObjectiveId = @GoalObjectiveId AND IsActive = 1 and EmployeeId = @EmpId)      
    --print @keyCount;
    UPDATE GoalKey set IsActive = 0, UpdatedOn = GETDATE() WHERE GoalKeyId = @GoalKeyId and EmployeeId = @EmpId;    
    
     IF(@keyCount = 1 and @EmployeeId = @EmpId)      
      BEGIN     
	  --print 'Enter In KeyCount Block';
       DECLARE @GoalKeyIdFromKey BIGINT, @keyCountFromKey INT,@GoalCountFromKey INT,@StartGoalIndexFromKey INT, @GoalObjectiveIdFromKey BigInt,@StartKeyIndexFromKey Int;    
      INSERT INTO #TempAllLevelEmpRecordFromKey EXECUTE  [sp_GetAllLevelContributors] 1,@GoalObjectiveId,@EmployeeId;    
      Set @GoalCountFromKey = (Select Count(*) from #TempAllLevelEmpRecordFromKey);    
      Set @StartGoalIndexFromKey = (1);    
      Set @StartKeyIndexFromKey = (1);    
         --select * from #TempAllLevelEmpRecordFromKey;
		 --print @GoalCountFromKey;print @StartGoalIndexFromKey;print @StartKeyIndexFromKey;
      While (@StartGoalIndexFromKey <= @GoalCountFromKey)    
       Begin    
     Set @GoalObjectiveIdFromKey = (select GoalIdFromKey from #TempAllLevelEmpRecordFromKey where TempGoalIdFromKey = @StartGoalIndexFromKey);    
    --print @GoalObjectiveIdFromKey;
	Insert INTO #TempAllLevelGoalKeyRecord (GoalKeyId) (Select GoalKeyId from GoalKey where GoalObjectiveId = @GoalObjectiveIdFromKey and IsActive = 1);    
     --select * from #TempAllLevelGoalKeyRecord;
	 Set @keyCountFromKey = (Select Count(*) from #TempAllLevelGoalKeyRecord);  
	 --print @keyCountFromKey;
     UPDATE GoalObjective set IsActive = 0, UpdatedOn = GETDATE() WHERE GoalObjectiveId = @GoalObjectiveIdFromKey;      
     Set @StartGoalIndexFromKey = (@StartGoalIndexFromKey + 1);    
     While (@StartKeyIndexFromKey <= @keyCountFromKey)    
     Begin    
     Set @GoalKeyIdFromKey = (select GoalKeyId from #TempAllLevelGoalKeyRecord where TempGoalKeyId = @StartKeyIndexFromKey);   
	 --print @GoalKeyIdFromKey;
     UPDATE GoalKey set IsActive = 0, UpdatedOn = GETDATE() WHERE  GoalKeyId = @GoalKeyIdFromKey;    
     Set @StartKeyIndexFromKey = (@StartKeyIndexFromKey + 1);    
     End       
      END    
    
         END      
   End  
      Set @StartGoalIndex = (@StartGoalIndex + 1);    
     End    
          END      
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAllLevelObjective]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_DeleteAllLevelObjective]      
   (      
 @GoalType int,      
 @GoalId bigint,      
 @EmpId Bigint ,  
 @Status INT  
 )      
 AS      
 BEGIN      
    
    DECLARE @GoalKeyId BIGINT, @keyCount INT,@GoalCount INT,@StartGoalIndex INT,@StartKeyIndex INT,@GoalObjectiveId BigInt;    
    IF OBJECT_ID('TempDB.dbo.#TempAllLevelEmpRecord') IS NOT NULL          
    BEGIN          
      Drop Table #TempAllLevelEmpRecord          
    END          
    CREATE TABLE #TempAllLevelEmpRecord          
    (           
      TempGoalId int Identity (1,1) ,GoalId bigint,GoalImportedId bigint,EmployeeId bigint, ObjLabel int          
    )       
 IF OBJECT_ID('TempDB.dbo.#TempAllLevelEmpRecordFromKey') IS NOT NULL          
    BEGIN          
      Drop Table #TempAllLevelEmpRecordFromKey          
    END          
    CREATE TABLE #TempAllLevelEmpRecordFromKey          
    (           
      TempGoalIdFromKey int Identity (1,1) ,GoalIdFromKey bigint,GoalImportedIdFromKey bigint,EmployeeIdFromKey bigint, ObjLabelFromKey int          
    )       
 IF OBJECT_ID('TempDB.dbo.#TempAllLevelGoalKeyRecord') IS NOT NULL          
    BEGIN          
      Drop Table #TempAllLevelGoalKeyRecord         
    END          
    CREATE TABLE #TempAllLevelGoalKeyRecord          
    (           
      TempGoalKeyId int Identity (1,1) ,GoalKeyId bigint         
    )  
	
	 IF OBJECT_ID('TempDB.dbo.#TempAllLevelUpdateRecord') IS NOT NULL          
    BEGIN          
      Drop Table #TempAllLevelUpdateRecord         
    END          
    CREATE TABLE #TempAllLevelUpdateRecord          
    (           
      TempId int Identity (1,1) ,Goaltype int,GoalId Bigint         
    )       
    
    
    Insert INTO #TempAllLevelEmpRecord EXECUTE  [sp_GetAllLevelContributors] @GoalType,@GoalId,@EmpId;    
 Set @GoalCount = (Select Count(*) from #TempAllLevelEmpRecord);    
 Set @StartGoalIndex = (1);    
 Set @StartKeyIndex = (1);    
    IF (@GoalType = 1)      
    BEGIN      
     While (@StartGoalIndex <= @GoalCount)    
     Begin    
      Set @GoalObjectiveId = (select GoalId from #TempAllLevelEmpRecord where TempGoalId = @StartGoalIndex);    
      Insert INTO #TempAllLevelGoalKeyRecord (GoalKeyId) (Select GoalKeyId from GoalKey where GoalObjectiveId = @GoalObjectiveId and IsActive = 1);    
      Set @keyCount = (Select Count(*) from #TempAllLevelGoalKeyRecord);    
      UPDATE GoalObjective set IsActive = 0, UpdatedOn = GETDATE() WHERE GoalObjectiveId = @GoalObjectiveId; 
	  INSERT INTO #TempAllLevelUpdateRecord VALUES (1,@GoalObjectiveId)
   Set @StartGoalIndex = (@StartGoalIndex + 1);    
   While (@StartKeyIndex <= @keyCount)    
      Begin    
   Set @GoalKeyId = (select GoalKeyId from #TempAllLevelGoalKeyRecord where TempGoalKeyId = @StartKeyIndex);    
   UPDATE GoalKey set IsActive = 0, UpdatedOn = GETDATE() WHERE  GoalKeyId = @GoalKeyId;   
    INSERT INTO #TempAllLevelUpdateRecord VALUES (2,@GoalKeyId)
   Set @StartKeyIndex = (@StartKeyIndex + 1);    
   End       
     END    
    END      
    ELSE IF (@GoalType = 2)      
    BEGIN       
    While (@StartGoalIndex <= @GoalCount)    
     Begin    
       Set @GoalKeyId = (select GoalId from #TempAllLevelEmpRecord where TempGoalId = @StartGoalIndex);    
    Set @GoalObjectiveId = (select GoalObjectiveId from GoalKey where GoalKeyId = @GoalKeyId);    
    Set @keyCount = (Select COUNT(*) FROM GoalKey where GoalObjectiveId = @GoalObjectiveId AND IsActive = 1)      
    
    UPDATE GoalKey set IsActive = 0, UpdatedOn = GETDATE() WHERE GoalKeyId = @GoalKeyId 
	  INSERT INTO #TempAllLevelUpdateRecord VALUES (2,@GoalKeyId)
	
    
     IF(@keyCount = 1 and @Status = 1)      
      BEGIN      
       DECLARE @GoalKeyIdFromKey BIGINT, @keyCountFromKey INT,@GoalCountFromKey INT,@StartGoalIndexFromKey INT, @GoalObjectiveIdFromKey BigInt,@StartKeyIndexFromKey Int;    
      INSERT INTO #TempAllLevelEmpRecordFromKey EXECUTE  [sp_GetAllLevelContributors] 1,@GoalObjectiveId,@EmpId;    
      Set @GoalCountFromKey = (Select Count(*) from #TempAllLevelEmpRecordFromKey);    
      Set @StartGoalIndexFromKey = (1);    
      Set @StartKeyIndexFromKey = (1);    
         
      While (@StartGoalIndexFromKey <= @GoalCountFromKey)    
       Begin    
     Set @GoalObjectiveIdFromKey = (select GoalIdFromKey from #TempAllLevelEmpRecordFromKey where TempGoalIdFromKey = @StartGoalIndexFromKey);    
     Insert INTO #TempAllLevelGoalKeyRecord (GoalKeyId) (Select GoalKeyId from GoalKey where GoalObjectiveId = @GoalObjectiveIdFromKey and IsActive = 1);    
     Set @keyCountFromKey = (Select Count(*) from #TempAllLevelGoalKeyRecord);    
     UPDATE GoalObjective set IsActive = 0, UpdatedOn = GETDATE() WHERE GoalObjectiveId = @GoalObjectiveIdFromKey;
	
	  INSERT INTO #TempAllLevelUpdateRecord VALUES (1,@GoalObjectiveIdFromKey)
     Set @StartGoalIndexFromKey = (@StartGoalIndexFromKey + 1);    
     While (@StartKeyIndexFromKey <= @keyCountFromKey)    
     Begin    
     Set @GoalKeyIdFromKey = (select GoalKeyId from #TempAllLevelGoalKeyRecord where TempGoalKeyId = @StartKeyIndexFromKey);    
     UPDATE GoalKey set IsActive = 0, UpdatedOn = GETDATE() WHERE  GoalKeyId = @GoalKeyIdFromKey;  
	  INSERT INTO #TempAllLevelUpdateRecord VALUES (2,@GoalKeyIdFromKey)
     Set @StartKeyIndexFromKey = (@StartKeyIndexFromKey + 1);    
     End       
      END    
    
         END  
     
  
      Set @StartGoalIndex = (@StartGoalIndex + 1); 
	 
     End    
          END  
		   select Distinct Goaltype,GoalId from #TempAllLevelUpdateRecord
END 


GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllContributorsWithScore]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetAllContributorsWithScore]            
(            
@GoalTypeId int,            
@GoalId bigint,        
@EmployeeId bigint
)            
AS            
Begin            
              
            
IF OBJECT_ID('TempDB.dbo.#TempAllContributors') IS NOT NULL            
 BEGIN            
  drop table #TempAllContributors            
 END            
               
    CREATE TABLE #TempAllContributors            
    (             
      TempResultId int Identity (1,1) ,EmployeeId bigint , Score Decimal , EndDate Datetime          
    )            
        
    if (@GoalTypeId = 1)        
       Begin        
         Insert into #TempAllContributors (EmployeeId,Score,EndDate)  select Distinct(EmployeeId),Score,EndDate  from GoalObjective where ImportedId in (@GoalId) and isActive = 1 and EmployeeId != @EmployeeId        
       End        
    Else if (@GoalTypeId = 2)        
       Begin        
          Insert into #TempAllContributors (EmployeeId,Score,EndDate)  select Distinct(EmployeeId),Score,DueDate  from GoalKey where ImportedId in (@GoalId) and isActive = 1 and EmployeeId != @EmployeeId       
       End        
        
select EmployeeId,Score,EndDate from #TempAllContributors;            
            
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllLevelContributors]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[sp_GetAllLevelContributors]        
(        
@GoalTypeId int,          
@GoalId bigint,      
@EmployeeId bigint      
)        
AS        
Begin        
        
     
Declare @Count int;           
Declare @EmpId int        
Declare @IsExit int        
Declare @OrgCycleId bigint    
        
    
IF OBJECT_ID('TempDB.dbo.#TempEmployeeObjective') IS NOT NULL        
 BEGIN        
  drop table #TempEmployeeObjective        
 END        
           
    CREATE TABLE #TempEmployeeObjective        
    (         
      TempGoalId int Identity (1,1) ,GoalId bigint,GoalImportedId bigint,EmployeeId bigint, ObjLabel int        
    )       
    
         
    if (@GoalTypeId = 1)      
      Begin     
    Insert into #TempEmployeeObjective (GoalId,GoalImportedId,EmployeeId,ObjLabel) select GoalObjectiveId,ImportedId,EmployeeId,0  from GoalObjective where GoalObjectiveId = @GoalId and isActive = 1;  
    Set @OrgCycleId = (select ObjectiveCycleId from GoalObjective where GoalObjectiveId = @GoalId);      
    Insert into #TempEmployeeObjective (GoalId,GoalImportedId,EmployeeId,ObjLabel) select GoalObjectiveId,ImportedId,EmployeeId,1  from GoalObjective where ImportedId in (@GoalId) and isActive = 1 and GoalObjective.ObjectiveCycleId = @OrgCycleId and EmployeeId != @EmployeeId      
    
    Set @IsExit = (1)     
    Set @Count = (1)        
      While @IsExit = 1        
         Begin        
           If exists(select * from goalObjective where ImportedId in (select GoalId from #TempEmployeeObjective) and GoalObjectiveId not in (select GoalId from #TempEmployeeObjective) and ObjectiveCycleId = @OrgCycleId and isActive = 1)        
             Begin        
                Insert into #TempEmployeeObjective (GoalId,GoalImportedId,EmployeeId,ObjLabel)  select GoalObjectiveId,ImportedId,EmployeeId,@Count+1 from GoalObjective where ImportedId in (select GoalId from #TempEmployeeObjective)  and GoalObjectiveId not in (select GoalId from #TempEmployeeObjective) and ObjectiveCycleId = @OrgCycleId and isActive = 1;        
                Set @Count = (@Count + 1)        
             End        
          Else        
             Begin        
                Set @IsExit = (0)         
             End        
        End    
 End    
    Else if (@GoalTypeId = 2)      
      Begin      
    Insert into #TempEmployeeObjective (GoalId,GoalImportedId,EmployeeId,ObjLabel) select GoalKeyId,ImportedId,EmployeeId,0 from GoalKey where GoalKeyId =  @GoalId and IsActive = 1;  
    Set @OrgCycleId = (select ObjectiveCycleId from GoalObjective inner join GoalKey on (GoalKey.GoalobjectiveId = GoalObjective.GoalobjectiveId) where GoalKey.GoalKeyId = @GoalId);       
    Insert into #TempEmployeeObjective (GoalId,GoalImportedId,EmployeeId,ObjLabel) select GoalKeyId,ImportedId,EmployeeId,1 from GoalKey where ImportedId in (@GoalId) and IsActive = 1 and EmployeeId != @EmployeeId      
    
   Set @IsExit = (1)     
      Set @Count = (1)        
      While @IsExit = 1        
         Begin        
           If exists(select * from GoalKey where ImportedId in (select GoalId from #TempEmployeeObjective) and GoalKeyId not in (select GoalId from #TempEmployeeObjective) and isActive = 1)        
             Begin        
                Insert into #TempEmployeeObjective (GoalId,GoalImportedId,EmployeeId,ObjLabel)  select GoalKeyId,ImportedId,EmployeeId,@Count+1 from GoalKey where ImportedId in (select GoalId from #TempEmployeeObjective)  and GoalKeyId not in (select GoalId from #TempEmployeeObjective) and isActive = 1;        
                Set @Count = (@Count + 1)        
             End        
          Else        
             Begin        
                Set @IsExit = (0)         
             End        
        End    
    
      End       
      
        
select GoalId,GoalImportedId,EmployeeId,ObjLabel from #TempEmployeeObjective;    
        
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGoalMapAlignment]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetGoalMapAlignment]        
(        
@OrgCycleId bigint,        
@EmployeeId bigint,
@Year int
)        
AS        
Begin        
        
Declare @ImportedId bigint;        
Declare @Count int;        
Declare @SelfGoalCount int         
Declare @IsExit int        
Declare @AlginLabel int  


IF OBJECT_ID('TempDB.dbo.#TempAllGoalFromAlign') IS NOT NULL        
 BEGIN        
  drop table #TempAllGoalFromAlign        
 END        
           
    CREATE TABLE #TempAllGoalFromAlign        
    (         
      TempResultId int Identity (1,1) ,GoalObjId bigint,ImportedId bigint,AlignLevel int
    ) 

Insert into #TempAllGoalFromAlign(GoalObjId , ImportedId ,AlignLevel) Select GoalObjectiveId , ImportedId , 0 From GoalObjective where EmployeeId = @EmployeeId and IsActive = 1 and ObjectiveCycleId = @OrgCycleId and Year = @Year
 
 IF OBJECT_ID('TempDB.dbo.#TempAllGoalToAlign') IS NOT NULL        
 BEGIN        
  drop table #TempAllGoalToAlign        
 END        
           
    CREATE TABLE #TempAllGoalToAlign        
    (         
      TempResultId int Identity (1,1) ,GoalObjId bigint,ImportedId bigint,AlignLevel int
    ) 

Insert into #TempAllGoalToAlign(GoalObjId , ImportedId ,AlignLevel) Select GoalObjectiveId , ImportedId , 0 From GoalObjective where EmployeeId = @EmployeeId and IsActive = 1 and ObjectiveCycleId = @OrgCycleId and Year = @Year

IF OBJECT_ID('TempDB.dbo.#TempAllGoalAlign') IS NOT NULL        
 BEGIN        
  drop table #TempAllGoalAlign        
 END        
           
    CREATE TABLE #TempAllGoalAlign        
    (         
      TempResultId int Identity (1,1) ,GoalObjId bigint,ImportedId bigint,AlignLevel int
    ) 
    
Set @IsExit = (1)        
Set @Count = (1)        
While @IsExit = 1        
  Begin        
     if exists(select * from goalObjective where GoalObjectiveId in (select ImportedId from #TempAllGoalFromAlign) and GoalObjectiveId not in (select GoalObjId from #TempAllGoalFromAlign) and ObjectiveCycleId = @OrgCycleId and isActive = 1 and Year = @Year)        
       Begin        
         Insert into #TempAllGoalFromAlign (GoalObjId,ImportedId,AlignLevel)  select GoalObjectiveId,ImportedId,0 - @count from GoalObjective where GoalObjectiveId in (select ImportedId from #TempAllGoalFromAlign)  and GoalObjectiveId not in (select GoalObjId from #TempAllGoalFromAlign) and ObjectiveCycleId = @OrgCycleId and isActive = 1 and Year = @Year;        
         Set @Count = (@Count + 1)   
       End        
     else        
       Begin        
           Set @IsExit = (0)         
       End        
  End 

Set @IsExit = (1)        
Set @Count = (1)        
While @IsExit = 1        
  Begin        
     if exists(select * from goalObjective where ImportedId in (select GoalObjId from #TempAllGoalToAlign) and ImportedId not in (select ImportedId from #TempAllGoalToAlign) and ObjectiveCycleId = @OrgCycleId and isActive = 1 and Year = @Year)        
       Begin        
         Insert into #TempAllGoalToAlign (GoalObjId,ImportedId,AlignLevel)  select GoalObjectiveId,ImportedId,@Count from GoalObjective where ImportedId in (select GoalObjId from #TempAllGoalToAlign)  and ImportedId not in (select ImportedId from #TempAllGoalToAlign) and ObjectiveCycleId = @OrgCycleId and isActive = 1 and Year = @Year;        
         Set @Count = (@Count + 1)   
       End        
     else        
       Begin        
           Set @IsExit = (0)         
       End        
  End 

Insert Into #TempAllGoalAlign(GoalObjId , ImportedId , AlignLevel) select GoalObjId , ImportedId , AlignLevel from #TempAllGoalFromAlign;

Insert Into #TempAllGoalAlign(GoalObjId , ImportedId , AlignLevel) select GoalObjId , ImportedId , AlignLevel from #TempAllGoalToAlign where AlignLevel > 0;
    
select GoalObjId , ImportedId , AlignLevel from #TempAllGoalAlign order by AlignLevel;        
        
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPeopleAlignment]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [sp_GetPeopleAlignment_ShivTest] 34,608
Create Procedure [dbo].[sp_GetPeopleAlignment]      
(      
@OrgCycleId bigint,      
@EmployeeId bigint      
)      
AS      
Begin      
      
Declare @ObjectiveCount int      
Declare @KeyResultCount int      
Declare @Count int;      
Declare @ToAlignCount int      
Declare @ToKeyResCount int      
Declare @EmpId int      
Declare @IsExit int      
Declare @AlginLabel int      
Declare @EmpAlignToId bigint      
      
IF OBJECT_ID('TempDB.dbo.#TempPeopleFromAlign') IS NOT NULL      
 BEGIN      
  drop table #TempPeopleFromAlign      
 END      
         
    CREATE TABLE #TempPeopleFromAlign      
    (       
      TempResultId int Identity (1,1) ,EmployeeId bigint,ObjectiveCount int,KeyResultCount int,AlignFromId bigint,AlignToId bigint,AlignLevel int , SourceAlign NVarchar(MAx)      
    )      
      
Insert into #TempPeopleFromAlign (EmployeeId , ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId)  select EmployeeId,count(EmployeeId) as GoalObjective,0,0,EmployeeId,@EmployeeId  from GoalObjective where goalObjectiveId in (select ImportedId
  from GoalObjective where EmployeeId = @EmployeeId and ImportedId != 0 and ObjectiveCycleId = @OrgCycleId and isActive = 1) and isActive = 1 and ObjectiveCycleId = @OrgCycleId group by EmployeeId      
      
IF OBJECT_ID('TempDB.dbo.#TempPeopleToAlign') IS NOT NULL      
 BEGIN      
  drop table #TempPeopleToAlign      
 END      
         
    CREATE TABLE #TempPeopleToAlign      
    (       
      TempResultId int Identity (1,1) ,EmployeeId bigint,ObjectiveCount int,KeyResultCount int,AlignFromId bigint,AlignToId bigint,AlignLevel int ,SourceAlign NVarchar(MAx)             
    )      
      
Insert into #TempPeopleToAlign (EmployeeId , ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId,SourceAlign)  select EmployeeId,count(EmployeeId) as GoalObjective,0,1,@EmployeeId,EmployeeId,''  from GoalObjective       
where ImportedId in (select GoalObjectiveId from GoalObjective where EmployeeId = @EmployeeId and ObjectiveCycleId = @OrgCycleId  and isActive = 1)  and isActive = 1 and ObjectiveCycleId = @OrgCycleId group by EmployeeId      
    
    
IF OBJECT_ID('TempDB.dbo.#TempPeopleNLavelAlign') IS NOT NULL      
 BEGIN      
  drop table #TempPeopleNLavelAlign      
 END      
         
    CREATE TABLE #TempPeopleNLavelAlign      
    (       
      TempResultId int Identity (1,1) ,EmployeeId bigint,ObjectiveCount int,KeyResultCount int,AlignFromId bigint,AlignToId bigint,AlignLevel int , SourceAlign NVarchar(MAx)      
    )      
IF OBJECT_ID('TempDB.dbo.#TempPeopleAlign') IS NOT NULL      
 BEGIN      
  drop table #TempPeopleAlign      
 END      
         
    CREATE TABLE #TempPeopleAlign      
    (       
      TempResultId int Identity (1,1) ,EmployeeId bigint,ObjectiveCount int,KeyResultCount int,AlignFromId bigint,AlignToId bigint,AlignLevel int , SourceAlign NVarchar(Max)     
    )      
      
IF OBJECT_ID('TempDB.dbo.#TempEmployeeObjective') IS NOT NULL      
 BEGIN      
  drop table #TempEmployeeObjective      
 END      
         
    CREATE TABLE #TempEmployeeObjective      
    (       
      TempGoalId int Identity (1,1) ,GoalObjId bigint,GoalImportedId bigint,GoalEmployeeId bigint, ObjLabel int      
    )      
      
 Insert into #TempEmployeeObjective (GoalObjId,GoalImportedId,GoalEmployeeId,ObjLabel)  select GoalObjectiveId,ImportedId,EmployeeId,1 from GoalObjective where ImportedId in (select GoalObjectiveId from GoalObjective where EmployeeId = @EmployeeId and ObjectiveCycleId = @OrgCycleId  and isActive = 1) and ObjectiveCycleId = @OrgCycleId  and isActive = 1;      
      

IF OBJECT_ID('TempDB.dbo.#TempPeopleAllObjectiveWithEmployee') IS NOT NULL      
 BEGIN      
  drop table #TempPeopleAllObjectiveWithEmployee     
 END      
         
    CREATE TABLE #TempPeopleAllObjectiveWithEmployee      
    (       
      TempObjId int Identity (1,1) ,GoalObjId bigint , ImportedId bigint ,EmployeeId bigint , ObjLevel int   
    )      
      
Insert into #TempPeopleAllObjectiveWithEmployee (GoalObjId , ImportedId , EmployeeId, ObjLevel) 
select GoalObjectiveId , ImportedId ,EmployeeId,0  from GoalObjective where goalObjectiveId in (select ImportedId
  from GoalObjective where EmployeeId = @EmployeeId and ImportedId != 0 and ObjectiveCycleId = @OrgCycleId and isActive = 1) and isActive = 1 and ObjectiveCycleId = @OrgCycleId      

IF OBJECT_ID('TempDB.dbo.#TempPeopleFromObjective') IS NOT NULL      
 BEGIN      
  drop table #TempPeopleFromObjective     
 END      
         
    CREATE TABLE #TempPeopleFromObjective      
    (       
      TempObjId int Identity (1,1) ,GoalObjId bigint ,ImportedId bigint,EmployeeId Bigint     
    )      
      
  Insert into #TempPeopleFromObjective (GoalObjId , ImportedId , EmployeeId) 
  select GoalObjectiveId, ImportedId , EmployeeId from GoalObjective where IsActive = 1 and EmployeeId = @EmployeeId and ImportedId in (select GoalObjectiveId from GoalObjective where isActive = 1 and ObjectiveCycleId = @OrgCycleId and EmployeeId in (select Distinct(EmployeeId)  from GoalObjective where goalObjectiveId in (select ImportedId
  from GoalObjective where EmployeeId = @EmployeeId and ImportedId != 0 and ObjectiveCycleId = @OrgCycleId and isActive = 1) and isActive = 1 and ObjectiveCycleId = @OrgCycleId))
      
update TPFO set TPFO.EmployeeId = TPAO.EmployeeId from #TempPeopleAllObjectiveWithEmployee as TPAO inner join #TempPeopleFromObjective as TPFO on (TPAO.GoalObjId = TPFO.ImportedId)

Insert into #TempPeopleAllObjectiveWithEmployee (GoalObjId,ImportedId,EmployeeId,ObjLevel)
Select GoalObjId,ImportedId,EmployeeId,1 From #TempPeopleFromObjective;


IF OBJECT_ID('TempDB.dbo.#TempPeopleCurrentUserObjective') IS NOT NULL      
 BEGIN      
  drop table #TempPeopleCurrentUserObjective     
 END      
         
    CREATE TABLE #TempPeopleCurrentUserObjective      
    (       
      TempObjId int Identity (1,1) ,GoalObjId bigint,ImportedId bigint, EmployeeId Bigint       
    )      

set @Count = (1)      
Set @ToAlignCount = (select count(TempResultId) from #TempPeopleFromAlign);      
      
While @Count <= @ToAlignCount      
 Begin      
 Set @EmpId = (select EmployeeId from #TempPeopleFromAlign where TempResultId = @count);       
 Set @ToKeyResCount = (select count(GoalKeyId) from GoalKey where GoalObjectiveId in (select GoalObjectiveId from GoalObjective where goalObjectiveId in (select ImportedId from GoalObjective where EmployeeId = @EmployeeId and ImportedId != 0 and ObjectiveCycleId = @OrgCycleId  and isActive = 1) and EmployeeId = @EmpId and ObjectiveCycleId = @OrgCycleId   and isActive = 1)   and isActive = 1)      
      
 Update #TempPeopleFromAlign set KeyResultCount = @ToKeyResCount where TempResultId = @Count       
 Set @Count = @Count +1;      
         
  End      
    
Set @Count = (1)      
Set @ToAlignCount = (select count(TempResultId) from #TempPeopleToAlign);      
  --select * from #TempPeopleFromObjective;
  
while @Count <= @ToAlignCount      
    
 Begin      
 Set @EmpId = (select EmployeeId from #TempPeopleToAlign where TempResultId = @Count);       
 Set @ToKeyResCount = (select count(GoalKeyId) from GoalKey where GoalObjectiveId in (select GoalObjectiveId from GoalObjective where ImportedId in (select GoalObjectiveId from GoalObjective where EmployeeId = @EmployeeId and ObjectiveCycleId = @OrgCycleId   and isActive = 1) and EmployeeId = @EmpId and ObjectiveCycleId = @OrgCycleId and isActive = 1) and isActive = 1)       
        
 Insert into #TempPeopleCurrentUserObjective ( GoalObjId,ImportedId ,EmployeeId) 
select GoalObjectiveId ,ImportedId ,  EmployeeID from GoalObjective where IsActive = 1 and ObjectiveCycleId = @OrgCycleId and EmployeeId = @EmpId and ImportedId in (Select GoalObjId from #TempPeopleAllObjectiveWithEmployee)

--select * from #TempPeopleCurrentUserObjective;
 Declare @EmpRecord NVarchar(max) = null;  
 Select @EmpRecord = Coalesce(@EmpRecord + ',','') +  Cast(EmployeeId as NVarchar(MAx)) from #TempPeopleAllObjectiveWithEmployee where GoalObjId in (Select TPAO.ImportedId  From #TempPeopleCurrentUserObjective as TPCO inner join #TempPeopleAllObjectiveWithEmployee as TPAO on (TPCO.ImportedId = TPAO.GoalObjId)) 

 --print  @EmpRecord;

 update #TempPeopleToAlign set KeyResultCount = @ToKeyResCount where TempResultId = @Count  
 update #TempPeopleToAlign set SourceAlign = @EmpRecord where TempResultId = @Count 

 update TPCO set TPCO.EmployeeId = TPAO.EmployeeId from #TempPeopleAllObjectiveWithEmployee as TPAO inner join #TempPeopleCurrentUserObjective as TPCO on (TPAO.GoalObjId = TPCO.ImportedId)

Insert into #TempPeopleAllObjectiveWithEmployee (GoalObjId,ImportedId,EmployeeId,ObjLevel)
Select GoalObjId,ImportedId,EmployeeId,@Count From #TempPeopleCurrentUserObjective;


 Set @Count = @Count +1; 
 truncate table #TempPeopleCurrentUserObjective;
 --set @EmpRecord = '';
      
 End         
  --select * from #TempPeopleAllObjectiveWithEmployee;
    
Set @IsExit = (1)      
Set @Count = (1)      
While @IsExit = 1      
  Begin      
     if exists(select * from goalObjective where ImportedId in (select GoalObjId from #TempEmployeeObjective) and GoalObjectiveId not in (select GoalObjId from #TempEmployeeObjective) and ObjectiveCycleId = @OrgCycleId and isActive = 1)      
       Begin      
		   Insert into #TempEmployeeObjective (GoalObjId,GoalImportedId,GoalEmployeeId,ObjLabel)  select GoalObjectiveId,ImportedId,EmployeeId,@Count+1 from GoalObjective where ImportedId in (select GoalObjId from #TempEmployeeObjective)  and GoalObjectiveId not in (select GoalObjId from #TempEmployeeObjective) and ObjectiveCycleId = @OrgCycleId and isActive = 1;      
		   Set @Count = (@Count + 1) 
       End      
     else      
       Begin      
           Set @IsExit = (0)       
       End      
  End  
  -- select * from #TempEmployeeObjective;
 Set @ToAlignCount = (select Max(ObjLabel) from #TempEmployeeObjective);      
 set @Count = (2)      
      
      
while @Count <= @ToAlignCount      
   begin      
    Insert into #TempPeopleNLavelAlign (EmployeeId , ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId)      
    Select GoalEmployeeId,Count(GoalEmployeeId),0,@Count,GA.EmployeeId,GoalEmployeeId from  #TempEmployeeObjective inner join GoalObjective as GA on (#TempEmployeeObjective.GoalImportedId = GA.GoalObjectiveId)  where  GA.ObjectiveCycleId = @OrgCycleId and  
    ObjLabel = @Count and GA.isActive = 1 group by GoalEmployeeId,GA.EmployeeId;      
    set @Count = (@Count + 1)   
	--Select * from #TempPeopleNLavelAlign;
      
   end      
      
 Set @ToAlignCount = (select count(*) from #TempPeopleNLavelAlign);      
 set @Count = (1)      
  
-- select * from #TempPeopleAllObjectiveWithEmployee; 
      
While @Count <= @ToAlignCount      
  begin      
   set @EmpId = (select EmployeeId from #TempPeopleNLavelAlign where TempResultId = @Count);      
   set @EmpAlignToId = (select AlignToId from #TempPeopleNLavelAlign where TempResultId = @Count)      
   set @AlginLabel = (select AlignLevel from #TempPeopleNLavelAlign where TempResultId = @Count)        
   set @ToKeyResCount = (select count(GoalKeyId) from GoalKey where GoalObjectiveId in (select GoalObjId from #TempEmployeeObjective where GoalEmployeeId = @EmpAlignToId and ObjLabel =@AlginLabel) and isActive = 1);       
      
    Insert into #TempPeopleCurrentUserObjective ( GoalObjId,ImportedId ,EmployeeId) 
    select GoalObjectiveId ,ImportedId ,  EmployeeID from GoalObjective where IsActive = 1 and ObjectiveCycleId = @OrgCycleId and EmployeeId = @EmpId and ImportedId in (Select GoalObjId from #TempPeopleAllObjectiveWithEmployee)

 --select * from #TempPeopleCurrentUserObjective;
 Declare @EmpNLevelRecord NVarchar(max) = null;  
 Select @EmpNLevelRecord = Coalesce(@EmpNLevelRecord + ',','') +  Cast(EmployeeId as NVarchar(MAx)) from #TempPeopleAllObjectiveWithEmployee where GoalObjId in (Select TPCO.ImportedId  From #TempPeopleCurrentUserObjective as TPCO inner join #TempPeopleAllObjectiveWithEmployee as TPAO on (TPCO.ImportedId = TPAO.GoalObjId)) 
 
 --print @EmpNLevelRecord;

   update #TempPeopleNLavelAlign set KeyResultCount = @ToKeyResCount where TempResultId = @Count;      
   update #TempPeopleNLavelAlign set SourceAlign = @EmpNLevelRecord where TempResultId = @Count;      

   update TPCO set TPCO.EmployeeId = TPAO.EmployeeId from #TempPeopleAllObjectiveWithEmployee as TPAO inner join #TempPeopleCurrentUserObjective as TPCO on (TPAO.GoalObjId = TPCO.ImportedId)

Insert into #TempPeopleAllObjectiveWithEmployee (GoalObjId,ImportedId,EmployeeId,ObjLevel)
Select GoalObjId,ImportedId,EmployeeId,@Count From #TempPeopleCurrentUserObjective;

--select * from #TempPeopleAllObjectiveWithEmployee;

  Set @Count = @Count +1;
   truncate table #TempPeopleCurrentUserObjective;
  end      
 
 --select * from #TempPeopleAllObjectiveWithEmployee;
      
insert into #TempPeopleAlign(EmployeeId , ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId) select EmployeeId,ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId from #TempPeopleFromAlign;      
insert into #TempPeopleAlign(EmployeeId , ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId,SourceAlign) select EmployeeId,ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId,SourceAlign from #TempPeopleToAlign;      
insert into #TempPeopleAlign(EmployeeId , ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId,SourceAlign) select EmployeeId,ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId,SourceAlign from #TempPeopleNLavelAlign;      
      
select EmployeeId , ObjectiveCount,KeyResultCount,AlignLevel,AlignFromId,AlignToId,SourceAlign from #TempPeopleAlign;      
      
END   
GO
/****** Object:  StoredProcedure [dbo].[sp_KeyScore]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_KeyScore]
(
@goalObjectiveId bigint,
@goalObjectiveScore Decimal,
@goalObjectiveprogress INT,
@goalKeyId bigint,
@goalKeyScore decimal,
@goalKeyprogress INT,
@loginUser Bigint
)
AS
BEGIN

 


DECLARE @Score decimal(10,2)

 

SELECT @Score = Score  from goalkey where goalkeyid = @goalkeyid

 

INSERT INTO GoalKeyAudit VALUES (@goalKeyId,'Score',@Score,@goalKeyScore,getdate(),@loginUser)

 

UPDATE GoalObjective set Score = @goalObjectiveScore,Progress = @goalObjectiveprogress where goalobjectiveId = @goalObjectiveId
UPDATE GoalKey set Score = @goalKeyScore,Progress = @goalKeyprogress where GoalKeyId = @goalKeyId

 

 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ProgressReport]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_ProgressReport]  
(  
@ObjCycleId INT,  
@Year INT  
)  
AS          
Begin      
 Declare @EmployeeCount BigInt;   
 Declare @StartIndex BigInt;  
 Declare @EmployeeId BigInt;  
 Declare @TotalScore Decimal(10,2);  
 Declare @PrivateScore Decimal(10,2);  
 Declare @OrgScore Decimal(10,2);  
  
IF OBJECT_ID('TempDB.dbo.#TempAllEmployee') IS NOT NULL          
 BEGIN          
  drop table #TempAllEmployee          
 END          
             
    CREATE TABLE #TempAllEmployee          
    (           
      TempResultId int Identity (1,1) ,EmployeeId bigint, PrivateOkrScore Decimal(10,2), OrgOkrScore Decimal(10,2), TotalScore Decimal(18,2)       
    )    
  
Insert Into #TempAllEmployee (EmployeeId) Select Distinct(EmployeeId) From GoalObjective where GoalObjective.Year = @Year and ObjectiveCycleId = @ObjCycleId and  IsActive = 1 order by EmployeeId;  
  
 Set @StartIndex = 1;  
 Set @EmployeeCount = (Select Count(*) from #TempAllEmployee);  
      
 While (@StartIndex <= @EmployeeCount)      
    Begin      
        Set @EmployeeId = (Select EmployeeId From #TempAllEmployee where TempResultId = @StartIndex);  
  Set @TotalScore = (Select Cast(ISNull(Avg(Score),0.00) as decimal(10,2)) From GoalObjective where EmployeeId = @EmployeeId and ObjectiveCycleId = @ObjCycleId and IsActive = 1);  
  Set @PrivateScore = (Select Cast(ISNull(Avg(Score),0.00) as decimal(10,2)) From GoalObjective where EmployeeId = @EmployeeId and IsActive = 1 and ObjectiveCycleId = @ObjCycleId and IsPrivate = 1);  
  Set @OrgScore = (Select Cast(ISNull(Avg(Score),0.00) as decimal(10,2)) From GoalObjective where EmployeeId = @EmployeeId and IsActive = 1 and ObjectiveCycleId = @ObjCycleId  and IsPrivate = 0);  
  
  Update #TempAllEmployee Set PrivateOkrScore = @PrivateScore where TempResultId = @StartIndex;  
  Update #TempAllEmployee Set OrgOkrScore = @OrgScore where TempResultId = @StartIndex;  
  Update #TempAllEmployee Set TotalScore = @TotalScore where TempResultId = @StartIndex;  
  
  Set @StartIndex = @StartIndex + 1;  
    End   
  
 Select * from #TempAllEmployee;  
END   
  
GO
/****** Object:  StoredProcedure [dbo].[sp_QuarterReport]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_QuarterReport]
(
@ObjCycleId INT,
@Year INT
)
AS        
Begin   
IF OBJECT_ID('TempDB.dbo.#TempAllEmployee') IS NOT NULL        
 BEGIN        
  drop table #TempAllEmployee        
 END        
           
    CREATE TABLE #TempAllEmployee        
    (         
      TempResultId int Identity (1,1) , EmployeeId bigint, ObjectiveName Nvarchar(Max), ObjectiveDesc Nvarchar(Max), Score Decimal(18,2)     
    )  

Insert Into #TempAllEmployee (EmployeeId,ObjectiveName,ObjectiveDesc,Score) 
select EmployeeId,ObjectiveName,ObjectiveDescription,Score from GoalObjective where IsActive = 1 and Year = @Year and ObjectiveCycleId = @ObjCycleId order by EmployeeId

Insert Into #TempAllEmployee (EmployeeId,ObjectiveName,ObjectiveDesc,Score) 
select EmployeeId,'','AverageScore',Cast(ISNull(Avg(Score),0.00) as decimal(10,2)) from GoalObjective where IsActive = 1 and Year = @Year and ObjectiveCycleId = @ObjCycleId group by EmployeeId

 Select * from #TempAllEmployee order by EmployeeId , TempResultId;
END 
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateAverageScore]    Script Date: 22-02-2021 14:54:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[sp_UpdateAverageScore]
(
@ObjCycleId INT,
@Year INT
)
AS        
Begin    
 Declare @GoalObjectiveCount BigInt;
 Declare @StartIndex BigInt;
 Declare @GoalObjId BigInt;
 Declare @AverageScore Decimal(10,2);

IF OBJECT_ID('TempDB.dbo.#TempAllObjective') IS NOT NULL        
 BEGIN        
  drop table #TempAllObjective        
 END        
           
    CREATE TABLE #TempAllObjective        
    (         
      TempResultId int Identity (1,1) ,GoalObjectiveId bigint  
    )  

Insert Into #TempAllObjective (GoalObjectiveId) Select GoalObjectiveId From GoalObjective where GoalObjective.Year = @Year and ObjectiveCycleId = @ObjCycleId and  IsActive = 1;

 Set @StartIndex = 1;
 Set @GoalObjectiveCount = (Select Count(*) from #TempAllObjective);
    
 While (@StartIndex <= @GoalObjectiveCount)    
    Begin    
        Set @GoalObjId = (Select GoalObjectiveId From #TempAllObjective where TempResultId = @StartIndex);
		Set @AverageScore = (Select Cast(ISNull(Avg(Score),0.00) as decimal(10,2)) From GoalKey where GoalObjectiveId = @GoalObjId and IsActive = 1);
		Update GoalObjective Set Score = @AverageScore where GoalObjectiveId = @GoalObjId;
		 Set @StartIndex = @StartIndex + 1;
    End 
END 
GO



SET IDENTITY_INSERT [dbo].[Constant] ON 
GO
INSERT [dbo].[Constant] ([ConstantId], [ConstantName], [ConstantValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy], [IsActive]) VALUES (1, N'Minimum Organisational Threshold', N'70', CAST(N'2020-10-05T14:50:45.187' AS DateTime), 663, CAST(N'2020-10-05T14:50:45.187' AS DateTime), 663, 1)
GO
SET IDENTITY_INSERT [dbo].[Constant] OFF
GO
SET IDENTITY_INSERT [dbo].[MessageMaster] ON 
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (1, N'Looks like we got some work to do, so let’s get cracking', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (2, N'All who have accomplished great things have had a great goal, one which sometimes seemed impossible.', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (3, N'What’s most satisfying than knowing your work is focus on what’s important?', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (4, N'Motivation is the energy that can drive you to accomplish these goals, and it''s necessary for all types of success including yours!', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (5, N'Our goals can only be reached through planning and keeping ourselves accountable by taking action. No other route to consider.', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (6, N'The trouble with not having a goal is that you can spend your life running up and down the field and never score.', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (7, N'No one can get anywhere unless they know where they want to go and what they want to achieve.', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (8, N'Goals. There’s no telling how far you can go today. Surprise yourself! Go.', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (9, N'Your daily contribution to your goals is what will take your team to amp up!', 1)
GO
INSERT [dbo].[MessageMaster] ([MessageMasterId], [MessageDesc], [IsActive]) VALUES (10, N'A goal properly set is halfway reached.', 1)
GO
SET IDENTITY_INSERT [dbo].[MessageMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeOfGoalCreation] ON 
GO
INSERT [dbo].[TypeOfGoalCreation] ([TypeOfGoalCreationId], [PrimaryText], [SecondaryText], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive]) VALUES (1, N'Align to Obectives', N'Align to Obectives', 14254, CAST(N'2020-07-06T17:15:42.217' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TypeOfGoalCreation] ([TypeOfGoalCreationId], [PrimaryText], [SecondaryText], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive]) VALUES (2, N'Create New Objective', N'Create New Objective', 14254, CAST(N'2020-07-06T17:15:44.780' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[TypeOfGoalCreation] ([TypeOfGoalCreationId], [PrimaryText], [SecondaryText], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive]) VALUES (3, N'Import Previous Objectives', N'Import Previous Objectives', 14254, CAST(N'2020-07-06T17:15:44.780' AS DateTime), NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[TypeOfGoalCreation] OFF
GO

-- PostV1_Script starts here
--SPRINT2.9.0A

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'KrStatusMessage')
begin
CREATE TABLE [dbo].[KrStatusMessage](
	[KrStatusMessageId] [int] primary key IDENTITY(1,1) NOT NULL,
	[AssignerGoalKeyId] [bigint] NOT NULL,
		[AssigneeGoalKeyId] [bigint]NOT NULL,
		[KrAssignerMessage] [text],
		[KrAssigneeMessage] [text],
		[CreatedOnAssigner] [datetime],
		[CreatedOnAssignee] [dateTime],
		[IsActive] [bit] NULL,
		)
end


IF NOT EXISTS (SELECT   *  FROM    INFORMATION_SCHEMA.COLUMNS  WHERE    TABLE_NAME = 'GoalObjective' AND COLUMN_NAME = 'GoalStatusId')
BEGIN
ALTER TABLE [dbo].[GoalObjective]
ADD 
   GoalStatusId int
END


IF NOT EXISTS (SELECT * FROM   INFORMATION_SCHEMA.COLUMNS WHERE   TABLE_NAME = 'GoalObjective' AND COLUMN_NAME = 'GoalTypeId')
BEGIN
ALTER TABLE [dbo].[GoalObjective]
ADD 
    GoalTypeId int 
END


 IF NOT EXISTS (SELECT  * FROM  INFORMATION_SCHEMA.COLUMNS  WHERE  TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'StartDate') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
   StartDate datetime
END


IF NOT EXISTS (SELECT  * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'MetricId') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
  MetricId int
END

IF NOT EXISTS (SELECT  * FROM  INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'AssignmentTypeId') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
     AssignmentTypeId int
END

IF NOT EXISTS (SELECT  * FROM  INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'CurrencyId') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
     CurrencyId int
END

IF NOT EXISTS (SELECT  * FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'CurrentValue') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
     CurrentValue decimal(10,2)
END

IF NOT EXISTS (SELECT   * FROM INFORMATION_SCHEMA.COLUMNS WHERE   TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'TargetValue') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
    TargetValue decimal(10,2)
END

IF NOT EXISTS (SELECT   * FROM INFORMATION_SCHEMA.COLUMNS  WHERE  TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'KrAssignerMessage') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
     KrAssignerMessage text 
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS  WHERE  TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'KrStatusId') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
     KrStatusId int
END

IF NOT EXISTS (SELECT  * FROM  INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'KrAssigneeMessage') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
  KrAssigneeMessage text
END

IF NOT EXISTS (SELECT  * FROM  INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME = 'GoalKey' AND COLUMN_NAME = 'CycleId')
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
    CycleId int 
END
 
 IF  EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS  WHERE  TABLE_NAME = 'GoalKey' AND COLUMN_NAME = 'Remarks')
 BEGIN
    ALTER TABLE GoalKey
    DROP COLUMN Remarks;
END

IF  EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME = 'KrStatusMessage')
BEGIN
    ALTER TABLE GoalKey
    DROP COLUMN KrStatusMessage;
END


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'UnlockSupportTeam')
BEGIN
 CREATE TABLE [dbo].[UnlockSupportTeam](
    [Id] [bigint] IDENTITY(1,1) Primary key NOT NULL,
    [EmailId] [nvarchar] (80) NOT NULL,
    [FullName] [nvarchar] (100) NOT NULL
);
END

--SPRINT2.9.0A END

Go

--SPRINT2.9.0A

IF EXISTS(select * from GoalObjective where GoalStatusId is null)
BEGIN
UPDATE [dbo].[GoalObjective] set GoalStatusId=2 where GoalStatusId is null
END

IF EXISTS(select * from GoalObjective where GoalTypeId is null)
BEGIN
UPDATE [dbo].[GoalObjective] set GoalTypeId=2 where GoalTypeId is null
END

IF EXISTS(select * from goalkey where startdate is null)
BEGIN
UPDATE goalkey set startdate = goalobjective.StartDate from GoalObjective,GoalKey
where GoalObjective.GoalObjectiveId=GoalKey.GoalObjectiveId and  goalkey.StartDate is null
END

IF EXISTS(select * from goalkey where MetricId is null)
BEGIN
update goalkey set MetricId =5 where MetricId is null
END

IF EXISTS(select * from goalkey where AssignmentTypeId is null)
BEGIN
update goalkey set AssignmentTypeId =2 where AssignmentTypeId is null
END

IF EXISTS(select * from goalkey where CurrencyId is null)
BEGIN
update goalkey set CurrencyId =0 where CurrencyId is null
END

IF EXISTS(select * from goalkey where CurrentValue is null)
BEGIN
update goalKey set CurrentValue =0 where CurrentValue is null
END

IF EXISTS(select * from goalkey where TargetValue is null)
BEGIN
update goalKey set TargetValue =0 where TargetValue is null
END

IF EXISTS(select * from goalkey where KrStatusId is null)
BEGIN
update goalKey set KrStatusId=2 where KrStatusId is null
END

IF EXISTS(select * from goalkey where CycleId is null)
BEGIN
update goalkey set CycleId = goalobjective.ObjectiveCycleId from GoalObjective,GoalKey
where GoalObjective.GoalObjectiveId=GoalKey.GoalObjectiveId and  goalkey.CycleId is null
END

Go

--SPRINT2.9.0B START

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'CurrencyCode') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
    CurrencyCode varchar(10)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'GoalStatusId') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
    GoalStatusId int
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'ContributorValue') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
    ContributorValue decimal(10,2)
END

IF  EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME = 'KrAssignerMessage')
BEGIN
    ALTER TABLE GoalKey
    DROP COLUMN KrAssignerMessage;
END

IF  EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME = 'KrAssigneeMessage')
BEGIN
    ALTER TABLE GoalKey
    DROP COLUMN KrAssigneeMessage;
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'StartValue') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
    StartValue decimal(10,2)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GoalSequence')
BEGIN
 CREATE TABLE [dbo].[GoalSequence](
	[SequenceId] [bigint] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[GoalType] [int] NOT NULL,
	[GoalId] [bigint] NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
	[GoalCycleId] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UpdatedOn] [datetime] NULL
);
END




--SPRINT2.9.0B END
Go

--SPRINT2.9.0 B START

IF EXISTS(select * from GoalKey where ContributorValue is null)
BEGIN
UPDATE [dbo].[GoalKey] set ContributorValue = 0 where ContributorValue is null
END

IF EXISTS(select * from GoalKey where GoalStatusId is null)
BEGIN
UPDATE [dbo].[GoalKey] set GoalStatusId = 2 where GoalStatusId is null
END

IF EXISTS(select * from GoalKey where StartValue is null)
BEGIN
UPDATE [dbo].[GoalKey] set StartValue = 0 where StartValue is null
END

IF EXISTS(select * from GoalKey where MetricId = 5 and TargetValue = 0.00)
BEGIN
UPDATE [dbo].[GoalKey] set TargetValue = 100.00 where MetricId = 5 and TargetValue = 0.00
END

--SPRINT2.9.0 B END
Go

--SPRINT2.9.0B START

/****** Object:  StoredProcedure [dbo].[sp_UpdateKRValue]    Script Date: 17-02-2021 14:34:41 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_UpdateKRValue]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateKRValue](@EmpId bigint, @GoalKeyId bigint, @CurrentValue decimal(10, 2), @DueDate DateTime, @CycleStartDate DateTime, @CycleEndDate DateTime)
AS
BEGIN
SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION;
		--EXEC sp_LogJobAudit 'sp_UpdateKRValue','Started','Execution started';
		declare @Variance decimal(10,2)
		declare @Source bigint
		declare @MetricId int

		select @Variance = @CurrentValue - CurrentValue, @Source = Source, @MetricId = MetricId 
		from dbo.GoalKey where GoalKeyId = @GoalKeyId and IsActive = 1

		if @MetricId in (1,2,3,4,5)	-- For Percentage/Currency/Number/Booleans/NoUnit
		begin
			-- Update individual CurrentValue/Score/Progress
			update dbo.GoalKey set CurrentValue = @CurrentValue, Score = ((@CurrentValue-StartValue)+ContributorValue)*100/(TargetValue-StartValue)
				, UpdatedBy = @EmpId, UpdatedOn = getdate()
			where GoalKeyId = @GoalKeyId and IsActive = 1
			update dbo.GoalKey set Progress = dbo.fn_UpdateProgress(DueDate,@CycleStartDate,@CycleEndDate,Score) 
				, UpdatedBy = @EmpId, UpdatedOn = getdate()
			where GoalKeyId = @GoalKeyId and IsActive = 1

			;with CTE as (
			select GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
			from dbo.GoalKey 
			where GoalKeyId = @GoalKeyId and IsActive = 1
			union all
			select g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
			from dbo.GoalKey g inner join CTE c on g.GoalKeyId = c.ImportedId where g.IsActive = 1
			)

			select * into #temp_GoalKey from CTE

			-- Update ContributorValue/Score/Progress upward the tree in GoalKey
			update gk set 
				ContributorValue = ISNULL(gk.ContributorValue,0)+@Variance,
				Score = (ISNULL(gk.ContributorValue,0)+@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue),
				Progress = dbo.fn_UpdateProgress(DueDate,@CycleStartDate,@CycleEndDate, (ISNULL(gk.ContributorValue,0)+@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue)), 
				UpdatedBy = @EmpId, UpdatedOn = getdate()
			from #temp_GoalKey c join dbo.GoalKey gk on gk.GoalKeyId = c.GoalKeyId and gk.GoalKeyId <> @GoalKeyId

			-- Update Score/Progress on GoalObjective
			update gob 
				set Score = g2.Score, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = getdate()
			from	(select Cast(ISNull(Avg(gk.Score),0.00) as decimal(10,2))[Score], gk.GoalObjectiveId 
						from dbo.GoalObjective g join #temp_GoalKey k on g.GoalObjectiveId = k.GoalObjectiveId
						join dbo.GoalKey gk on k.GoalKeyId = gk.GoalKeyId where k.ImportedId <> 0
					group by gk.GoalObjectiveId) g2
			join dbo.GoalObjective gob on gob.GoalObjectiveId = g2.GoalObjectiveId

			update g
				set Score = g2.Score, Progress = dbo.fn_UpdateProgress(g.EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
				, UpdatedBy = @EmpId, UpdatedOn = getdate()
			from dbo.GoalObjective g join 
										(select gob.GoalObjectiveId, avg(gk.Score)[Score]
										from dbo.GoalObjective gob join dbo.GoalKey gk 
											on gk.GoalObjectiveId = gob.GoalObjectiveId
										where gob.GoalObjectiveId in (select GoalObjectiveId from #temp_GoalKey where ImportedId = 0)
										group by gob.GoalObjectiveId) g2
			on g.GoalObjectiveId = g2.GoalObjectiveId
		end
		drop table #temp_GoalKey
		COMMIT TRANSACTION;
	--EXEC sp_LogJobAudit 'sp_UpdateKRValue','Completed', 'Job Successfully completed';
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		DECLARE @ErrorDetails varchar(500) = CONVERT(varchar(10),ERROR_LINE())+' Line, Details- '+ERROR_MESSAGE();
		DECLARE @Severity int = ERROR_SEVERITY(),
				@State smallint = ERROR_STATE();
		RAISERROR(@ErrorDetails,@Severity,@State);
		--EXEC sp_LogJobAudit 'sp_UpdateKRValue','Error', @ErrorDetails;
   END CATCH
END;
GO


/****** Object:  UserDefinedFunction [dbo].[fn_UpdateProgress]    Script Date: 17-02-2021 19:32:04 ******/
DROP FUNCTION IF EXISTS [dbo].[fn_UpdateProgress]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[fn_UpdateProgress] (@DueDate DateTime, @CycleStartDate DateTime, @CycleEndDate DateTime, @Score Decimal)
returns int
as
begin
declare @timeLeft decimal = 0;
declare @progress int = 0;
declare @targetNotAchieved decimal = 100 - @Score;
declare @currentDate datetime = GETUTCDATE();
declare @differenceInDays decimal = datediff(dd, @currentDate, @DueDate);
declare @numberOfDays decimal = datediff(dd, @CycleStartDate, @CycleEndDate);
declare @deviation int;

set @timeLeft = (@differenceInDays / @numberOfDays) * 100;
if @timeLeft < 0 
	set @timeLeft = 0;

set @deviation = @targetNotAchieved - @timeLeft;

set @progress = 1;
if @Score > 0
begin
	if (@deviation < 20)
		set @progress = 4;	-- On Track
	else if (@deviation >= 20 and @deviation <= 30)
		set @progress = 3;	-- Lagging
	else if (@deviation > 30)
		set @progress = 2;	-- At Risk
end
return @progress;
end

GO



/****** Object:  StoredProcedure [dbo].[sp_DeleteContributor]    Script Date: 22-02-2021 15:12:10 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_DeleteContributor]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteContributor](@EmpId BIGINT, @GoalKeyId BIGINT, @CycleStartDate DATETIME, @CycleEndDate DATETIME)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION;
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Started','Execution started';

		print 'Checkpoint1'
		IF EXISTS (SELECT 1 FROM dbo.GoalKey WHERE GoalKeyId = @GoalKeyId AND IsActive = 0)
			RAISERROR('KeyResult already deleted!',11,1);

		DECLARE @Variance DECIMAL(10,2)
		DECLARE @MetricId INT
		SELECT	@Variance = (CurrentValue-StartValue)+ContributorValue
				, @MetricId = MetricId 
		FROM dbo.GoalKey WHERE GoalKeyId = @GoalKeyId

		IF @MetricId IN (1,2,3,4,5)	-- For Percentage/Currency/Number/Booleans/NoUnit
		BEGIN
		-- Get all GoalKeys downward the tree
			;WITH CTE AS (
				SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
				FROM dbo.GoalKey 
				WHERE GoalKeyId = @GoalKeyId AND IsActive = 1
				UNION ALL
				SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
				FROM dbo.GoalKey g INNER JOIN CTE c ON c.GoalKeyId = g.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp_GoalKey FROM CTE;

			-- update the status of GoalKeys downward the tree as inactive
			UPDATE gk SET IsActive = 0, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalKey gk JOIN #temp_GoalKey t 
				ON gk.GoalKeyId = t.GoalKeyId

			print 'Checkpoint2'
			-- get updated score for GoalObjectives due to deleted GoalKeys
			SELECT gob.GoalObjectiveId, AVG(ISNULL(gk.Score,0))[Score] 
			INTO #temp_GoalObjective
			FROM dbo.GoalObjective gob LEFT JOIN dbo.GoalKey gk 
				ON gob.GoalObjectiveId = gk.GoalObjectiveId and gk.IsActive = 1
			WHERE gob.GoalObjectiveId IN (SELECT GoalObjectiveId FROM #temp_GoalKey)
			GROUP BY gob.GoalObjectiveId

			-- update the score and progress on GoalObjectives
			UPDATE gob
				SET Score = t.Score
				, Progress = dbo.fn_UpdateProgress(gob.EndDate,@CycleStartDate,@CycleEndDate,t.Score)
				, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective gob JOIN #temp_GoalObjective t 
				ON gob.GoalObjectiveId = t.GoalObjectiveId

			print 'Checkpoint3'
			-- get GoalKeys upward the tree
			;WITH CTE AS (
			SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
			FROM dbo.GoalKey
			WHERE GoalKeyId = @GoalKeyId
			UNION ALL
			SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
			FROM dbo.GoalKey g INNER JOIN CTE c ON g.GoalKeyId = c.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp FROM CTE WHERE GoalKeyId <> @GoalKeyId

			-- Update ContributorValue/Score/Progress upward the tree in GoalKey
			UPDATE gk SET 
				ContributorValue = ISNULL(gk.ContributorValue,0)-@Variance
				,Score = (ISNULL(gk.ContributorValue,0)-@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue)
				,Progress = dbo.fn_UpdateProgress(DueDate,@CycleStartDate,@CycleEndDate, (ISNULL(gk.ContributorValue,0)-@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue))
				,UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM #temp c JOIN dbo.GoalKey gk ON gk.GoalKeyId = c.GoalKeyId --AND gk.GoalKeyId <> @GoalKeyId

			print 'Checkpoint4'
			-- Update Objective score and progress except for the originator
			UPDATE gob
				SET Score = g2.Score
					, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM	(SELECT CAST(ISNULL(AVG(gk.Score),0.00) AS DECIMAL(10,2))[Score], gk.GoalObjectiveId 
						FROM dbo.GoalObjective g JOIN #temp k ON g.GoalObjectiveId = k.GoalObjectiveId
						JOIN dbo.GoalKey gk ON k.GoalKeyId = gk.GoalKeyId WHERE k.ImportedId <> 0
					GROUP BY gk.GoalObjectiveId) g2
			JOIN dbo.GoalObjective gob ON gob.GoalObjectiveId = g2.GoalObjectiveId

			-- Update Objective score and progress for the originator
			print 'Checkpoint5'
			UPDATE g
				SET Score = g2.Score
					, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective g JOIN 
										(SELECT gob.GoalObjectiveId, AVG(gk.Score)[Score]
										FROM dbo.GoalObjective gob JOIN dbo.GoalKey gk 
											ON gk.GoalObjectiveId = gob.GoalObjectiveId
										WHERE gob.GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp WHERE ImportedId = 0)
										GROUP BY gob.GoalObjectiveId) g2
			ON g.GoalObjectiveId = g2.GoalObjectiveId
			
			SELECT GoalObjectiveId into #temp_Objectives FROM #temp_GoalKey UNION
			SELECT GoalObjectiveId FROM #temp

			print 'Checkpoint6'
			-- Delete Objectives not containing any active KR
			UPDATE obj SET IsActive = 0 FROM dbo.GoalObjective obj JOIN (
				SELECT t.GoalObjectiveId, x.COUNT FROM #temp_Objectives t LEFT JOIN (
					SELECT GoalObjectiveId, COUNT(*) [Count]
					FROM dbo.GoalKey 
					WHERE GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp_Objectives) AND IsActive = 1
					GROUP BY GoalObjectiveId) x
				ON t.GoalObjectiveId = x.GoalObjectiveId) x2
			ON obj.GoalObjectiveId = x2.GoalObjectiveId
			WHERE x2.[Count] is null
			print 'Checkpoint7'

			IF OBJECT_ID('tempdb..#temp_Objectives') IS NOT NULL 
				DROP TABLE #temp_Objectives
			IF OBJECT_ID('tempdb..#temp_GoalKey') IS NOT NULL 
				DROP TABLE #temp_GoalKey 
			IF OBJECT_ID('tempdb..#temp') IS NOT NULL 
				DROP TABLE #temp 
		END
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Completed', 'Job Successfully completed';
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		DECLARE @ErrorDetails VARCHAR(500) = CONVERT(VARCHAR(10),ERROR_LINE())+' Line, Details- '+ERROR_MESSAGE();
		DECLARE @Severity int = ERROR_SEVERITY(),
				@State smallint = ERROR_STATE();
		RAISERROR(@ErrorDetails,@Severity,@State);
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Error', @ErrorDetails;
   END CATCH
END;
GO


/****** Object:  StoredProcedure [dbo].[sp_DeleteObjective]    Script Date: 22-02-2021 19:53:33 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_DeleteObjective]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteObjective](@EmpId BIGINT, @GoalObjectiveId BIGINT, @CycleStartDate DATETIME, @CycleEndDate DATETIME)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @MaxCount INT = 0;
		DECLARE @CurrentCount INT = 1;
		DECLARE @GoalKeyId BIGINT;
		BEGIN TRANSACTION;
		--EXEC sp_LogJobAudit 'sp_DeleteObjective','Started','Execution started';

		SELECT GoalKeyId, ROW_NUMBER() OVER (ORDER BY GoalKeyId) [RowNum] 
		INTO #tmp
		FROM dbo.GoalKey WHERE GoalObjectiveId = @GoalObjectiveId and IsActive = 1

		SELECT @MaxCount = MAX(RowNum) FROM #tmp

		WHILE @CurrentCount <= @MaxCount
		BEGIN
			SELECT @GoalKeyId = GoalKeyId FROM #tmp WHERE RowNum = @CurrentCount
			exec sp_DeleteContributor @EmpId,@GoalKeyId,@CycleStartDate,@CycleEndDate;
			SET @CurrentCount = @CurrentCount + 1
		END

		-- Delete the Goal Objective in case there is no Key Result within
		UPDATE dbo.GoalObjective SET IsActive = 0 WHERE GoalObjectiveId = @GoalObjectiveId AND GoalStatusId = 1

		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		DECLARE @ErrorDetails VARCHAR(500) = CONVERT(VARCHAR(10),ERROR_LINE())+' Line, Details- '+ERROR_MESSAGE();
		DECLARE @Severity int = ERROR_SEVERITY(),
				@State smallint = ERROR_STATE();
		RAISERROR(@ErrorDetails,@Severity,@State);
		--EXEC sp_LogJobAudit 'sp_DeleteObjective','Error', @ErrorDetails;
   END CATCH
END;

GO


/****** Object:  Trigger [dbo].[trg_GoalKeyAudit]    Script Date: 2/26/2021 3:01:18 PM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_GoalKeyAudit]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE trigger [dbo].[trg_GoalKeyAudit]
ON [dbo].[GoalKey]
FOR UPDATE
AS

BEGIN
DECLARE @goalkeyId Bigint, @KeyDesc nvarchar(max),@Score decimal,@progress int, @dueDate datetime

--Create table #tempRecord (
--GoalKeyId Bigint,
--KeyDescription nvarchar(max),
--Score decimal,
--Progress int,
--DueDate datetime
--)


--INSERT into #tempRecord (GoalKeyId,KeyDescription,Score,Progress,DueDate)
--Select GoalKeyId,KeyDescription,Score,Progress,DueDate FROM Deleted ;

--SET @goalkeyId= (Select goalkeyId from INSERTED i);

IF UPDATE(GoalKeyId)
BEGIN
;THROW 51000, 'You can''t update the primary key', 1;
END

 IF UPDATE(KeyDescription)
BEGIN
PRINT 'KeyDescription Updated'
--SET @KeyDesc= (Select KeyDescription from #tempRecord where GoalKeyId=@goalkeyId);
INSERT GoalKeyAudit
(
UpdatedGoalKeyId,
UpdatedColumn,
OldValue,
NewValue,
UpdatedOn,
UpdatedBy
)
SELECT i.GoalKeyId,'KeyDescription',d.KeyDescription, i.KeyDescription, GETDATE() ,i.UpdatedBy FROM inserted i join deleted d on i.GoalKeyId = d.GoalKeyId;

 END

 IF UPDATE(Score)
BEGIN
PRINT 'Score Updated'
--SET @Score= (Select Score from #tempRecord where GoalKeyId=@goalkeyId);
INSERT GoalKeyAudit
(
UpdatedGoalKeyId,
UpdatedColumn,
OldValue,
NewValue,
UpdatedOn,
UpdatedBy
)
SELECT i.GoalKeyId,'Score',d.Score, i.Score, GETDATE() ,i.UpdatedBy FROM inserted i join deleted d on i.GoalKeyId = d.GoalKeyId;
END

 IF UPDATE(DueDate)
BEGIN
PRINT 'Due Date Updated'
--SET @dueDate= (Select DueDate from #tempRecord where GoalKeyId=@goalkeyId);
INSERT GoalKeyAudit
(
UpdatedGoalKeyId,
UpdatedColumn,
OldValue,
NewValue,
UpdatedOn,
UpdatedBy
)
SELECT i.GoalKeyId,'DueDate',d.DueDate, i.DueDate, GETDATE() ,i.UpdatedBy FROM inserted i join deleted d on i.GoalKeyId = d.GoalKeyId;
END

 IF UPDATE(Progress)
 BEGIN
 PRINT 'Progress Updated'
--SET @progress= (Select Progress from #tempRecord where GoalKeyId=@goalkeyId);
 INSERT GoalKeyAudit
(
 UpdatedGoalKeyId,
 UpdatedColumn,
 OldValue,
 NewValue,
 UpdatedOn,
 UpdatedBy
)
SELECT i.GoalKeyId,'Progress',d.Progress, i.Progress, GETDATE() ,i.UpdatedBy FROM inserted i join deleted d on i.GoalKeyId = d.GoalKeyId;
END

END

 --DROP TABLE #tempRecord



--SPRINT2.9.0B END

Go
--SPRINT2.9.0C START


IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'KeyNotes') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
    KeyNotes text
END




--SPRINT2.9.0C END
Go

--SPRINT2.9.0 C START

/****** Object:  StoredProcedure [dbo].[sp_DeleteContributor]    Script Date: 18-03-2021 13:07:30 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_DeleteContributor]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_DeleteContributor](@EmpId BIGINT, @GoalKeyId BIGINT, @CycleStartDate DATETIME, @CycleEndDate DATETIME)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION;
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Started','Execution started';

		print 'Checkpoint1'
		--IF EXISTS (SELECT 1 FROM dbo.GoalKey WHERE GoalKeyId = @GoalKeyId AND IsActive = 0)
			--RAISERROR('KeyResult already deleted!',11,1);

		DECLARE @Variance DECIMAL(10,2)
		DECLARE @MetricId INT
		SELECT	@Variance = (CurrentValue-StartValue)+ContributorValue
				, @MetricId = MetricId 
		FROM dbo.GoalKey WHERE GoalKeyId = @GoalKeyId

		IF @MetricId IN (1,2,3,4,5)	-- For Percentage/Currency/Number/Booleans/NoUnit
		BEGIN
		-- Get all GoalKeys downward the tree
			;WITH CTE AS (
				SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
				FROM dbo.GoalKey 
				WHERE GoalKeyId = @GoalKeyId AND IsActive = 1
				UNION ALL
				SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
				FROM dbo.GoalKey g INNER JOIN CTE c ON c.GoalKeyId = g.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp_GoalKey FROM CTE;

			-- update the status of GoalKeys downward the tree as inactive
			UPDATE gk SET IsActive = 0, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalKey gk JOIN #temp_GoalKey t 
				ON gk.GoalKeyId = t.GoalKeyId

			print 'Checkpoint2'
			-- get updated score for GoalObjectives due to deleted GoalKeys
			SELECT gob.GoalObjectiveId, AVG(ISNULL(gk.Score,0))[Score] 
			INTO #temp_GoalObjective
			FROM dbo.GoalObjective gob LEFT JOIN dbo.GoalKey gk 
				ON gob.GoalObjectiveId = gk.GoalObjectiveId and gk.IsActive = 1
			WHERE gob.GoalObjectiveId IN (SELECT GoalObjectiveId FROM #temp_GoalKey)
			GROUP BY gob.GoalObjectiveId

			-- update the score and progress on GoalObjectives
			UPDATE gob
				SET Score = t.Score
				, Progress = dbo.fn_UpdateProgress(gob.EndDate,@CycleStartDate,@CycleEndDate,t.Score)
				, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective gob JOIN #temp_GoalObjective t 
				ON gob.GoalObjectiveId = t.GoalObjectiveId

			print 'Checkpoint3'
			-- get GoalKeys upward the tree
			;WITH CTE AS (
			SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
			FROM dbo.GoalKey
			WHERE GoalKeyId = @GoalKeyId
			UNION ALL
			SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
			FROM dbo.GoalKey g INNER JOIN CTE c ON g.GoalKeyId = c.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp FROM CTE WHERE GoalKeyId <> @GoalKeyId

			-- Update ContributorValue/Score/Progress upward the tree in GoalKey
			UPDATE gk SET 
				ContributorValue = ISNULL(gk.ContributorValue,0)-@Variance
				,Score = (ISNULL(gk.ContributorValue,0)-@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue)
				,Progress = dbo.fn_UpdateProgress(DueDate,@CycleStartDate,@CycleEndDate, (ISNULL(gk.ContributorValue,0)-@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue))
				,UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM #temp c JOIN dbo.GoalKey gk ON gk.GoalKeyId = c.GoalKeyId --AND gk.GoalKeyId <> @GoalKeyId

			print 'Checkpoint4'
			-- Update Objective score and progress except for the originator
			UPDATE gob
				SET Score = g2.Score
					, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM	(SELECT CAST(ISNULL(AVG(gk.Score),0.00) AS DECIMAL(10,2))[Score], gk.GoalObjectiveId 
						FROM dbo.GoalObjective g JOIN #temp k ON g.GoalObjectiveId = k.GoalObjectiveId
						JOIN dbo.GoalKey gk ON k.GoalKeyId = gk.GoalKeyId WHERE k.ImportedId <> 0
					GROUP BY gk.GoalObjectiveId) g2
			JOIN dbo.GoalObjective gob ON gob.GoalObjectiveId = g2.GoalObjectiveId

			-- Update Objective score and progress for the originator
			print 'Checkpoint5'
			UPDATE g
				SET Score = g2.Score
					, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective g JOIN 
										(SELECT gob.GoalObjectiveId, AVG(gk.Score)[Score]
										FROM dbo.GoalObjective gob JOIN dbo.GoalKey gk 
											ON gk.GoalObjectiveId = gob.GoalObjectiveId
										WHERE gob.GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp WHERE ImportedId = 0)
										GROUP BY gob.GoalObjectiveId) g2
			ON g.GoalObjectiveId = g2.GoalObjectiveId
			
			SELECT GoalObjectiveId into #temp_Objectives FROM #temp_GoalKey UNION
			SELECT GoalObjectiveId FROM #temp

			print 'Checkpoint6'
			-- Delete Objectives not containing any active KR
			UPDATE obj SET IsActive = 0 FROM dbo.GoalObjective obj JOIN (
				SELECT t.GoalObjectiveId, x.COUNT FROM #temp_Objectives t LEFT JOIN (
					SELECT GoalObjectiveId, COUNT(*) [Count]
					FROM dbo.GoalKey 
					WHERE GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp_Objectives) AND IsActive = 1
					GROUP BY GoalObjectiveId) x
				ON t.GoalObjectiveId = x.GoalObjectiveId) x2
			ON obj.GoalObjectiveId = x2.GoalObjectiveId
			WHERE x2.[Count] is null
			print 'Checkpoint7'

			IF OBJECT_ID('tempdb..#temp_Objectives') IS NOT NULL 
				DROP TABLE #temp_Objectives
			IF OBJECT_ID('tempdb..#temp_GoalKey') IS NOT NULL 
				DROP TABLE #temp_GoalKey 
			IF OBJECT_ID('tempdb..#temp') IS NOT NULL 
				DROP TABLE #temp 
		END
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Completed', 'Job Successfully completed';
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		DECLARE @ErrorDetails VARCHAR(500) = CONVERT(VARCHAR(10),ERROR_LINE())+' Line, Details- '+ERROR_MESSAGE();
		DECLARE @Severity int = ERROR_SEVERITY(),
				@State smallint = ERROR_STATE();
		RAISERROR(@ErrorDetails,@Severity,@State);
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Error', @ErrorDetails;
   END CATCH
END;

GO



--SPRINT2.9.0 C END

Go

--SPRINT 2.9.1 A START

----------------------------Start - Shiv - 01/04/2021 ---------------------------

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GoalKeyHistory')
BEGIN
CREATE TABLE [dbo].[GoalKeyHistory](
	[HistoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[GoalKeyId] [bigint] NOT NULL,
	[CurrentValue] [decimal](10, 2) NOT NULL,
	[ContributorValue] [decimal](10, 2) NOT NULL,
	[Score] [decimal](10, 2) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
 CONSTRAINT [PK_GoalKeyHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO

----------------------------End - Shiv - 01/04/2021 ---------------------------


----------------------------------------- START - Team OKR Release Script -----------------------------------------------

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'TeamSequence')
BEGIN
 CREATE TABLE [dbo].[TeamSequence](
	[TeamSequenceId] [bigint] IDENTITY(1,1) Primary key NOT NULL,
	[TeamId] [bigint] NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
	[CycleId] [int] NOT NULL,
	[Sequence] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UpdatedOn] [datetime] NULL
);
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalObjective' AND COLUMN_NAME= 'TeamId') 
BEGIN
ALTER TABLE [dbo].[GoalObjective]
ADD 
	TeamId BIGINT DEFAULT 0
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalObjective' AND COLUMN_NAME= 'Owner') 
BEGIN
ALTER TABLE [dbo].[GoalObjective]
ADD 
	Owner BIGINT DEFAULT 0
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'TeamId') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
	TeamId BIGINT DEFAULT 0
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'Owner') 
BEGIN
ALTER TABLE [dbo].[GoalKey]
ADD 
	Owner BIGINT DEFAULT 0
END

----------------------------------------- END - Team OKR Release Script -----------------------------------------------

--SPRINT2.9.1 A END
Go
--SPRINT 2.9.1 A START
-------------------------------SHIV - 12/04/2021 - Start ----------------------------------------------
IF EXISTS(select * from MessageMaster where MessageDesc = 'All who have accomplished great things have had a great goal, one which sometimes seemed impossible.')
BEGIN
UPDATE MessageMaster set MessageDesc = 'All who have accomplished great things have had a great objective, one which sometimes seemed impossible.' where MessageDesc = 'All who have accomplished great things have had a great goal, one which sometimes seemed impossible.'
END

IF EXISTS(select * from MessageMaster where MessageDesc = 'Motivation is the energy that can drive you to accomplish these goals, and it''s necessary for all types of success including yours!')
BEGIN
UPDATE MessageMaster set MessageDesc = 'Motivation is the energy that can drive you to accomplish these objectives, and it''s necessary for all types of success including yours!' where MessageDesc = 'Motivation is the energy that can drive you to accomplish these goals, and it''s necessary for all types of success including yours!'
END

IF EXISTS(select * from MessageMaster where MessageDesc = 'Our goals can only be reached through planning and keeping ourselves accountable by taking action. No other route to consider.')
BEGIN
UPDATE MessageMaster set MessageDesc = 'Our objectives can only be reached through planning and keeping ourselves accountable by taking action. No other route to consider.' where MessageDesc = 'Our goals can only be reached through planning and keeping ourselves accountable by taking action. No other route to consider.'
END
IF EXISTS(select * from MessageMaster where MessageDesc = 'The trouble with not having a goal is that you can spend your life running up and down the field and never score.')
BEGIN
UPDATE MessageMaster set MessageDesc = 'The trouble with not having a objective is that you can spend your life running up and down the field and never score.' where MessageDesc = 'The trouble with not having a goal is that you can spend your life running up and down the field and never score.'
END
IF EXISTS(select * from MessageMaster where MessageDesc = 'Goals. There’s no telling how far you can go today. Surprise yourself! Go.')
BEGIN
UPDATE MessageMaster set MessageDesc = 'Objectives. There’s no telling how far you can go today. Surprise yourself! Go.' where MessageDesc = 'Goals. There’s no telling how far you can go today. Surprise yourself! Go.'
END
IF EXISTS(select * from MessageMaster where MessageDesc = 'Your daily contribution to your goals is what will take your team to amp up!')
BEGIN
UPDATE MessageMaster set MessageDesc = 'Your daily contribution to your objectives is what will take your team to amp up!' where MessageDesc = 'Your daily contribution to your goals is what will take your team to amp up!'
END
IF EXISTS(select * from MessageMaster where MessageDesc = 'A goal properly set is halfway reached.')
BEGIN
UPDATE MessageMaster set MessageDesc = 'A objective properly set is halfway reached.' where MessageDesc = 'A goal properly set is halfway reached.'
END
-------------------------------SHIV - 12/04/2021 - END ----------------------------------------------


----------------------------------------- START - Team OKR Release Script -----------------------------------------------

IF EXISTS(select * from GoalObjective where TeamId is null)
BEGIN
UPDATE [dbo].[GoalObjective] set TeamId = 0 where TeamId is null
END

IF EXISTS(select * from GoalObjective where Owner is null)
BEGIN
UPDATE [dbo].[GoalObjective] set Owner = 0 where Owner is null
END

IF EXISTS(select * from GoalKey where TeamId is null)
BEGIN
UPDATE [dbo].[GoalKey] set TeamId = 0 where TeamId is null
END

IF EXISTS(select * from GoalKey where Owner is null)
BEGIN
UPDATE [dbo].[GoalKey] set Owner = 0 where Owner is null
END

----------------------------------------- END - Team OKR Release Script -------------------------------------------------


--SPRINT 2.9.1 A END

Go
--SPRINT 2.9.1 A START

----------------------------------------- START - Team OKR Release Script -----------------------------------------------

/****** Object:  StoredProcedure [dbo].[sp_DeleteContributor]    Script Date: 06-05-2021 12:43:40 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_DeleteContributor]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteContributor](@EmpId BIGINT, @GoalKeyId BIGINT, @CycleStartDate DATETIME, @CycleEndDate DATETIME)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION;
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Started','Execution started';

		print 'Checkpoint1'
		--IF EXISTS (SELECT 1 FROM dbo.GoalKey WHERE GoalKeyId = @GoalKeyId AND IsActive = 0)
			--RAISERROR('KeyResult already deleted!',11,1);

		DECLARE @Variance DECIMAL(10,2)
		DECLARE @MetricId INT
		SELECT	@Variance = (CurrentValue-StartValue)+ContributorValue
				, @MetricId = MetricId 
		FROM dbo.GoalKey WHERE GoalKeyId = @GoalKeyId

		IF @MetricId IN (1,2,3)	-- For Percentage/Currency/Number/Booleans/NoUnit
		BEGIN
		-- Get all GoalKeys downward the tree
			;WITH CTE AS (
				SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
				FROM dbo.GoalKey 
				WHERE GoalKeyId = @GoalKeyId AND IsActive = 1
				UNION ALL
				SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
				FROM dbo.GoalKey g INNER JOIN CTE c ON c.GoalKeyId = g.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp_GoalKey FROM CTE;

			-- update the status of GoalKeys downward the tree as inactive
			UPDATE gk SET IsActive = 0, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalKey gk JOIN #temp_GoalKey t 
				ON gk.GoalKeyId = t.GoalKeyId

			print 'Checkpoint2'
			-- get updated score for GoalObjectives due to deleted GoalKeys
			SELECT gob.GoalObjectiveId, AVG(ISNULL(gk.Score,0))[Score] 
			INTO #temp_GoalObjective
			FROM dbo.GoalObjective gob LEFT JOIN dbo.GoalKey gk 
				ON gob.GoalObjectiveId = gk.GoalObjectiveId and gk.IsActive = 1
			WHERE gob.GoalObjectiveId IN (SELECT GoalObjectiveId FROM #temp_GoalKey)
			GROUP BY gob.GoalObjectiveId

			-- update the score and progress on GoalObjectives
			UPDATE gob
				SET Score = t.Score
				, Progress = dbo.fn_UpdateProgress(gob.EndDate,@CycleStartDate,@CycleEndDate,t.Score)
				, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective gob JOIN #temp_GoalObjective t 
				ON gob.GoalObjectiveId = t.GoalObjectiveId

			print 'Checkpoint3'
			-- get GoalKeys upward the tree
			;WITH CTE AS (
			SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
			FROM dbo.GoalKey
			WHERE GoalKeyId = @GoalKeyId
			UNION ALL
			SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
			FROM dbo.GoalKey g INNER JOIN CTE c ON g.GoalKeyId = c.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp FROM CTE WHERE GoalKeyId <> @GoalKeyId

			-- Update ContributorValue/Score/Progress upward the tree in GoalKey
			UPDATE gk SET 
				ContributorValue = ISNULL(gk.ContributorValue,0)-@Variance
				,Score = (ISNULL(gk.ContributorValue,0)-@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue)
				,Progress = dbo.fn_UpdateProgress(DueDate,@CycleStartDate,@CycleEndDate, (ISNULL(gk.ContributorValue,0)-@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue))
				,UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM #temp c JOIN dbo.GoalKey gk ON gk.GoalKeyId = c.GoalKeyId --AND gk.GoalKeyId <> @GoalKeyId

			print 'Checkpoint4'
			-- Update Objective score and progress except for the originator
			UPDATE gob
				SET Score = g2.Score
					, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM	(SELECT CAST(ISNULL(AVG(gk.Score),0.00) AS DECIMAL(10,2))[Score], gk.GoalObjectiveId 
						FROM dbo.GoalObjective g JOIN #temp k ON g.GoalObjectiveId = k.GoalObjectiveId
						JOIN dbo.GoalKey gk ON k.GoalKeyId = gk.GoalKeyId WHERE k.ImportedId <> 0
					GROUP BY gk.GoalObjectiveId) g2
			JOIN dbo.GoalObjective gob ON gob.GoalObjectiveId = g2.GoalObjectiveId

			-- Update Objective score and progress for the originator
			print 'Checkpoint5'
			UPDATE g
				SET Score = g2.Score
					, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective g JOIN 
										(SELECT gob.GoalObjectiveId, AVG(gk.Score)[Score]
										FROM dbo.GoalObjective gob JOIN dbo.GoalKey gk 
											ON gk.GoalObjectiveId = gob.GoalObjectiveId
										WHERE gob.GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp WHERE ImportedId = 0)
										GROUP BY gob.GoalObjectiveId) g2
			ON g.GoalObjectiveId = g2.GoalObjectiveId
			
			SELECT GoalObjectiveId into #temp_Objectives FROM #temp_GoalKey UNION
			SELECT GoalObjectiveId FROM #temp

			print 'Checkpoint6'
			-- Delete Objectives not containing any active KR
			UPDATE obj SET IsActive = 0 FROM dbo.GoalObjective obj JOIN (
				SELECT t.GoalObjectiveId, x.COUNT FROM #temp_Objectives t LEFT JOIN (
					SELECT GoalObjectiveId, COUNT(*) [Count]
					FROM dbo.GoalKey 
					WHERE GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp_Objectives) AND IsActive = 1
					GROUP BY GoalObjectiveId) x
				ON t.GoalObjectiveId = x.GoalObjectiveId) x2
			ON obj.GoalObjectiveId = x2.GoalObjectiveId
			WHERE x2.[Count] is null
			print 'Checkpoint7'

			IF OBJECT_ID('tempdb..#temp_Objectives') IS NOT NULL 
				DROP TABLE #temp_Objectives
			IF OBJECT_ID('tempdb..#temp_GoalKey') IS NOT NULL 
				DROP TABLE #temp_GoalKey 
			IF OBJECT_ID('tempdb..#temp') IS NOT NULL 
				DROP TABLE #temp 
		END
		------ for no unit 
		ELSE IF @MetricId IN (5)
		BEGIN
		  -- Get all GoalKeys downward the tree
			;WITH CTE AS (
				SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
				FROM dbo.GoalKey 
				WHERE GoalKeyId = @GoalKeyId AND IsActive = 1
				UNION ALL
				SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
				FROM dbo.GoalKey g INNER JOIN CTE c ON c.GoalKeyId = g.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp_GoalKey_NU FROM CTE;

			-- update the status of GoalKeys downward the tree as inactive
			UPDATE gk SET IsActive = 0, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalKey gk JOIN #temp_GoalKey_NU t 
				ON gk.GoalKeyId = t.GoalKeyId

			
			-- get updated score for GoalObjectives due to deleted GoalKeys
			SELECT gob.GoalObjectiveId, AVG(ISNULL(gk.Score,0))[Score] 
			INTO #temp_GoalObjective_NU
			FROM dbo.GoalObjective gob LEFT JOIN dbo.GoalKey gk 
				ON gob.GoalObjectiveId = gk.GoalObjectiveId and gk.IsActive = 1
			WHERE gob.GoalObjectiveId IN (SELECT GoalObjectiveId FROM #temp_GoalKey_NU)
			GROUP BY gob.GoalObjectiveId

			-- update the score and progress on GoalObjectives
			UPDATE gob
				SET Score = t.Score
				, Progress = dbo.fn_UpdateProgress(gob.EndDate,@CycleStartDate,@CycleEndDate,t.Score)
				, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective gob JOIN #temp_GoalObjective_NU t 
				ON gob.GoalObjectiveId = t.GoalObjectiveId

			--------------------Below Code has been move to C#----------------
			-- get GoalKeys upward the tree
							--;WITH CTE AS (
							--SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
							--FROM dbo.GoalKey
							--WHERE GoalKeyId = @GoalKeyId
							--UNION ALL
							--SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
							--FROM dbo.GoalKey g INNER JOIN CTE c ON g.GoalKeyId = c.ImportedId WHERE g.IsActive = 1
							--)
							--SELECT * INTO #temp_NU FROM CTE WHERE GoalKeyId <> @GoalKeyId

			-- Update ContributorValue/Score/Progress upward the tree in GoalKey
							--UPDATE gk SET 
							--	ContributorValue = ISNULL(gk.ContributorValue,0)
							--	,Score = ( (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue)
							--	,Progress = dbo.fn_UpdateProgress(DueDate,@CycleStartDate,@CycleEndDate, (ISNULL(gk.ContributorValue,0) + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue))
							--	,UpdatedBy = @EmpId, UpdatedOn = GETDATE()
							--FROM #temp_NU c JOIN dbo.GoalKey gk ON gk.GoalKeyId = c.GoalKeyId --AND gk.GoalKeyId <> @GoalKeyId

			
			-- Update Objective score and progress except for the originator
							--UPDATE gob
							--	SET Score = g2.Score
							--		, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
							--		, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
							--FROM	(SELECT CAST(ISNULL(AVG(gk.Score),0.00) AS DECIMAL(10,2))[Score], gk.GoalObjectiveId 
							--			FROM dbo.GoalObjective g JOIN #temp_NU k ON g.GoalObjectiveId = k.GoalObjectiveId
							--			JOIN dbo.GoalKey gk ON k.GoalKeyId = gk.GoalKeyId WHERE k.ImportedId <> 0
							--		GROUP BY gk.GoalObjectiveId) g2
							--JOIN dbo.GoalObjective gob ON gob.GoalObjectiveId = g2.GoalObjectiveId

			-- Update Objective score and progress for the originator
			
						--UPDATE g
						--	SET Score = g2.Score
						--		, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
						--		, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
						--FROM dbo.GoalObjective g JOIN 
						--							(SELECT gob.GoalObjectiveId, AVG(gk.Score)[Score]
						--							FROM dbo.GoalObjective gob JOIN dbo.GoalKey gk 
						--								ON gk.GoalObjectiveId = gob.GoalObjectiveId
						--							WHERE gob.GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp_NU WHERE ImportedId = 0)
						--							GROUP BY gob.GoalObjectiveId) g2
						--ON g.GoalObjectiveId = g2.GoalObjectiveId
			
						SELECT GoalObjectiveId into #temp_Objectives_NU FROM #temp_GoalKey_NU
						-- UNION
						--SELECT GoalObjectiveId FROM #temp_NU

			
			-- Delete Objectives not containing any active KR
							UPDATE obj SET IsActive = 0 FROM dbo.GoalObjective obj JOIN (
								SELECT t.GoalObjectiveId, x.COUNT FROM #temp_Objectives_NU t LEFT JOIN (
									SELECT GoalObjectiveId, COUNT(*) [Count]
									FROM dbo.GoalKey 
									WHERE GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp_Objectives_NU) AND IsActive = 1
									GROUP BY GoalObjectiveId) x
								ON t.GoalObjectiveId = x.GoalObjectiveId) x2
							ON obj.GoalObjectiveId = x2.GoalObjectiveId
							WHERE x2.[Count] is null
			

			IF OBJECT_ID('tempdb..#temp_Objectives_NU') IS NOT NULL 
				DROP TABLE #temp_Objectives_NU
			IF OBJECT_ID('tempdb..#temp_GoalKey_NU') IS NOT NULL 
				DROP TABLE #temp_GoalKey_NU 
			--IF OBJECT_ID('tempdb..#temp_NU') IS NOT NULL 
			--	DROP TABLE #temp_NU

		END

		ELSE
		BEGIN
		-- Get all GoalKeys downward the tree
			;WITH CTE AS (
				SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
				FROM dbo.GoalKey 
				WHERE GoalKeyId = @GoalKeyId AND IsActive = 1
				UNION ALL
				SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
				FROM dbo.GoalKey g INNER JOIN CTE c ON c.GoalKeyId = g.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp_GoalKey_B FROM CTE;

			-- update the status of GoalKeys downward the tree as inactive
			UPDATE gk SET IsActive = 0, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalKey gk JOIN #temp_GoalKey_B t 
				ON gk.GoalKeyId = t.GoalKeyId

			print 'Checkpoint2'
			-- get updated score for GoalObjectives due to deleted GoalKeys
			SELECT gob.GoalObjectiveId, AVG(ISNULL(gk.Score,0))[Score] 
			INTO #temp_GoalObjective_B
			FROM dbo.GoalObjective gob LEFT JOIN dbo.GoalKey gk 
				ON gob.GoalObjectiveId = gk.GoalObjectiveId and gk.IsActive = 1
			WHERE gob.GoalObjectiveId IN (SELECT GoalObjectiveId FROM #temp_GoalKey_B)
			GROUP BY gob.GoalObjectiveId

			-- update the score and progress on GoalObjectives
			UPDATE gob
				SET Score = t.Score
				, Progress = dbo.fn_UpdateProgress(gob.EndDate,@CycleStartDate,@CycleEndDate,t.Score)
				, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective gob JOIN #temp_GoalObjective_B t 
				ON gob.GoalObjectiveId = t.GoalObjectiveId

			print 'Checkpoint3'
			-- get GoalKeys upward the tree
			;WITH CTE AS (
			SELECT GoalKeyId, GoalObjectiveId, Score, StartValue, CurrentValue, ContributorValue, TargetValue, ImportedId, Source, IsActive
			FROM dbo.GoalKey
			WHERE GoalKeyId = @GoalKeyId
			UNION ALL
			SELECT g.GoalKeyId, g.GoalObjectiveId, g.Score, g.StartValue, g.CurrentValue, g.ContributorValue, g.TargetValue, g.ImportedId, g.Source, g.IsActive
			FROM dbo.GoalKey g INNER JOIN CTE c ON g.GoalKeyId = c.ImportedId WHERE g.IsActive = 1
			)
			SELECT * INTO #temp_B FROM CTE WHERE GoalKeyId <> @GoalKeyId

			-- Update ContributorValue/Score/Progress upward the tree in GoalKey
			UPDATE gk SET 
				ContributorValue = ISNULL(gk.ContributorValue,0)-@Variance
				,Score = (ISNULL(gk.ContributorValue,0)-@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue)
				,Progress = dbo.fn_UpdateProgress(DueDate,@CycleStartDate,@CycleEndDate, (ISNULL(gk.ContributorValue,0)-@Variance + (gk.CurrentValue-gk.StartValue))*100/(gk.TargetValue-gk.StartValue))
				,UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM #temp_B c JOIN dbo.GoalKey gk ON gk.GoalKeyId = c.GoalKeyId --AND gk.GoalKeyId <> @GoalKeyId

			print 'Checkpoint4'
			-- Update Objective score and progress except for the originator
			UPDATE gob
				SET Score = g2.Score
					, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM	(SELECT CAST(ISNULL(AVG(gk.Score),0.00) AS DECIMAL(10,2))[Score], gk.GoalObjectiveId 
						FROM dbo.GoalObjective g JOIN #temp_B k ON g.GoalObjectiveId = k.GoalObjectiveId
						JOIN dbo.GoalKey gk ON k.GoalKeyId = gk.GoalKeyId WHERE k.ImportedId <> 0
					GROUP BY gk.GoalObjectiveId) g2
			JOIN dbo.GoalObjective gob ON gob.GoalObjectiveId = g2.GoalObjectiveId

			-- Update Objective score and progress for the originator
			print 'Checkpoint5'
			UPDATE g
				SET Score = g2.Score
					, Progress = dbo.fn_UpdateProgress(EndDate,@CycleStartDate,@CycleEndDate,g2.Score) 
					, UpdatedBy = @EmpId, UpdatedOn = GETDATE()
			FROM dbo.GoalObjective g JOIN 
										(SELECT gob.GoalObjectiveId, AVG(gk.Score)[Score]
										FROM dbo.GoalObjective gob JOIN dbo.GoalKey gk 
											ON gk.GoalObjectiveId = gob.GoalObjectiveId
										WHERE gob.GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp_B WHERE ImportedId = 0)
										GROUP BY gob.GoalObjectiveId) g2
			ON g.GoalObjectiveId = g2.GoalObjectiveId
			
			SELECT GoalObjectiveId into #temp_Objectives_B FROM #temp_GoalKey_B UNION
			SELECT GoalObjectiveId FROM #temp_B

			print 'Checkpoint6'
			-- Delete Objectives not containing any active KR
			UPDATE obj SET IsActive = 0 FROM dbo.GoalObjective obj JOIN (
				SELECT t.GoalObjectiveId, x.COUNT FROM #temp_Objectives_B t LEFT JOIN (
					SELECT GoalObjectiveId, COUNT(*) [Count]
					FROM dbo.GoalKey 
					WHERE GoalObjectiveId in (SELECT GoalObjectiveId FROM #temp_Objectives_B) AND IsActive = 1
					GROUP BY GoalObjectiveId) x
				ON t.GoalObjectiveId = x.GoalObjectiveId) x2
			ON obj.GoalObjectiveId = x2.GoalObjectiveId
			WHERE x2.[Count] is null
			print 'Checkpoint7'

			IF OBJECT_ID('tempdb..#temp_Objectives_B') IS NOT NULL 
				DROP TABLE #temp_Objectives_B
			IF OBJECT_ID('tempdb..#temp_GoalKey_B') IS NOT NULL 
				DROP TABLE #temp_GoalKey_B
			IF OBJECT_ID('tempdb..#temp_B') IS NOT NULL 
				DROP TABLE #temp_B
		END
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Completed', 'Job Successfully completed';
		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		DECLARE @ErrorDetails VARCHAR(500) = CONVERT(VARCHAR(10),ERROR_LINE())+' Line, Details- '+ERROR_MESSAGE();
		DECLARE @Severity int = ERROR_SEVERITY(),
				@State smallint = ERROR_STATE();
		RAISERROR(@ErrorDetails,@Severity,@State);
		--EXEC sp_LogJobAudit 'sp_DeleteContributor','Error', @ErrorDetails;
   END CATCH
END;

GO

/****** Object:  StoredProcedure [dbo].[sp_DeleteObjective]    Script Date: 06-05-2021 12:43:40 ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_DeleteObjective]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteObjective](@EmpId BIGINT, @GoalObjectiveId BIGINT, @CycleStartDate DATETIME, @CycleEndDate DATETIME)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @MaxCount INT = 0;
		DECLARE @CurrentCount INT = 1;
		DECLARE @GoalKeyId BIGINT;
		BEGIN TRANSACTION;
		--EXEC sp_LogJobAudit 'sp_DeleteObjective','Started','Execution started';
		
		SELECT GoalKeyId, ROW_NUMBER() OVER (ORDER BY GoalKeyId) [RowNum] 
		INTO #tmp
		FROM dbo.GoalKey WHERE GoalObjectiveId = @GoalObjectiveId and IsActive = 1
		
		SELECT @MaxCount = MAX(RowNum) FROM #tmp

		WHILE @CurrentCount <= @MaxCount
		BEGIN
			SELECT @GoalKeyId = GoalKeyId FROM #tmp WHERE RowNum = @CurrentCount
			exec sp_DeleteContributor @EmpId,@GoalKeyId,@CycleStartDate,@CycleEndDate;
			SET @CurrentCount = @CurrentCount + 1
		END
		
		-- Delete the Goal Objective in case there is no Key Result within
		UPDATE dbo.GoalObjective SET IsActive = 0 WHERE GoalObjectiveId = @GoalObjectiveId AND GoalStatusId = 1
		select GoalKeyId as GoalId, RowNum as GoalType from #tmp

		COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION;
		DECLARE @ErrorDetails VARCHAR(500) = CONVERT(VARCHAR(10),ERROR_LINE())+' Line, Details- '+ERROR_MESSAGE();
		DECLARE @Severity int = ERROR_SEVERITY(),
				@State smallint = ERROR_STATE();
		RAISERROR(@ErrorDetails,@Severity,@State);
		--EXEC sp_LogJobAudit 'sp_DeleteObjective','Error', @ErrorDetails;
   END CATCH
END;

GO

----------------------------------------- END - Team OKR Release Script -------------------------------------------------


--SPRINT2.9.1 A END

Go

------------------------------------------Missing Script while doing Migration ------------------------------------------

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalObjective' AND COLUMN_NAME= 'LinkedObjectiveId') 
BEGIN
ALTER TABLE [dbo].[GoalObjective]
ADD 
	LinkedObjectiveId BIGINT DEFAULT 0
END
GO
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKeyHistory' AND COLUMN_NAME= 'Progress') 
BEGIN
ALTER TABLE [dbo].[GoalKeyHistory]
ADD 
	Progress INT DEFAULT 1
END
GO

IF EXISTS(select * from GoalObjective where LinkedObjectiveId is null)
BEGIN
UPDATE [dbo].[GoalObjective] set LinkedObjectiveId = 0 where LinkedObjectiveId is null
END
GO
IF EXISTS(select * from GoalKeyHistory where Progress is null)
BEGIN
UPDATE [dbo].[GoalKeyHistory] set Progress = 1 where Progress is null
END
GO

IF NOT EXISTS (SELECT * FROM Constant WHERE ConstantName = 'DeltaDays')
BEGIN
INSERT INTO Constant VALUES ('DeltaDays','7',GETDATE(),1059,GETDATE(),1059,1)
END
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'TargetValue') 
BEGIN
ALTER TABLE GoalKey ALTER column TargetValue decimal(38,2) NULL
END
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'StartValue') 
BEGIN
ALTER TABLE GoalKey ALTER column StartValue decimal(38,2) NULL
END
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'CurrentValue') 
BEGIN
ALTER TABLE GoalKey ALTER column CurrentValue decimal(38,2) NULL
END
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKey' AND COLUMN_NAME= 'ContributorValue') 
BEGIN
ALTER TABLE GoalKey ALTER column ContributorValue decimal(38,2) NULL
END
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKeyHistory' AND COLUMN_NAME= 'ContributorValue') 
BEGIN
ALTER TABLE GoalKeyHistory ALTER column ContributorValue decimal(38,2) NULL
END
GO
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalKeyHistory' AND COLUMN_NAME= 'CurrentValue') 
BEGIN
ALTER TABLE GoalKeyHistory ALTER column CurrentValue decimal(38,2) NULL
END
GO

IF NOT EXISTS (SELECT * FROM Constant WHERE ConstantName = 'Least progress 7 days')
BEGIN
INSERT INTO Constant VALUES ('Least progress 7 days',7,getdate(),620,getdate(),620,1)
END
GO

IF NOT EXISTS (SELECT * FROM Constant WHERE ConstantName = 'Least progress 15 days')
BEGIN
INSERT INTO Constant VALUES ('Least progress 15 days',15,getdate(),620,getdate(),620,1)
END
GO

IF NOT EXISTS (SELECT * FROM Constant WHERE ConstantName = 'Least progress 30 days')
BEGIN
INSERT INTO Constant VALUES ('Least progress 30 days',30,getdate(),620,getdate(),620,1)
END
GO

----------- START DML 2.9.4
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'GoalObjective' AND COLUMN_NAME= 'IsCoachCreation')
BEGIN
ALTER TABLE GoalObjective ADD IsCoachCreation BIT DEFAULT 0 NOT NULL;
END
GO

/****** Object:  StoredProcedure [dbo].[sp_GetAllContributorsWithScore]    Script Date: 03-09-2021 11:41:42 ******/
IF EXISTS (Select * from sys.objects where name ='sp_GetAllContributorsWithScore' and type = 'p')
BEGIN
DROP PROC sp_GetAllContributorsWithScore
END
GO
CREATE Procedure [dbo].[sp_GetAllContributorsWithScore]            
(            
@GoalTypeId int,            
@GoalId bigint,        
@EmployeeId bigint
)            
AS            
Begin            
                         
IF OBJECT_ID('TempDB.dbo.#TempAllContributors') IS NOT NULL            
 BEGIN            
  drop table #TempAllContributors            
 END            
               
    CREATE TABLE #TempAllContributors            
    (             
      TempResultId int Identity (1,1) ,EmployeeId bigint , Score Decimal , EndDate Datetime          
    )            
        
    if (@GoalTypeId = 1)        
       Begin        
         Insert into #TempAllContributors (EmployeeId,Score,EndDate)  select Distinct(EmployeeId),Score,EndDate  from GoalObjective where ImportedId in (@GoalId) and isActive = 1 and EmployeeId != @EmployeeId and GoalStatusId = 2       
       End        
    Else if (@GoalTypeId = 2)        
       Begin        
          Insert into #TempAllContributors (EmployeeId,Score,EndDate)  select Distinct(EmployeeId),Score,DueDate  from GoalKey where ImportedId in (@GoalId) and isActive = 1 and EmployeeId != @EmployeeId  and  GoalStatusId = 2 and KrStatusId = 2   
       End        
        
select EmployeeId,Score,EndDate from #TempAllContributors;            
            
END

---------- END DML 2.9.4

