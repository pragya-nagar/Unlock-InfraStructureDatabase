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
--------------START  Sprint 2.9.6

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'GuidedTour')
BEGIN
CREATE TABLE [dbo].[GuidedTour](
    [Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,	
		)
END
Go

IF NOT EXISTS (SELECT * FROM GuidedTour WHERE Name = 'All and Team OKRs')
BEGIN
INSERT INTO GuidedTour VALUES ('All and Team OKRs')
END
GO

IF NOT EXISTS (SELECT * FROM GuidedTour WHERE Name ='My Progress' )
BEGIN
INSERT INTO GuidedTour VALUES ('My Progress')
END
GO

IF NOT EXISTS (SELECT * FROM GuidedTour WHERE Name = 'Objective(s) and Key Result(s)')
BEGIN
INSERT INTO GuidedTour VALUES ('Objective(s) and Key Result(s)')
END
GO

IF NOT EXISTS (SELECT * FROM GuidedTour WHERE Name ='Explore Navigation' )
BEGIN
INSERT INTO GuidedTour VALUES ('Explore Navigation')
END
GO

IF NOT EXISTS (SELECT * FROM GuidedTour WHERE Name = 'OKRs Cycle')
BEGIN
INSERT INTO GuidedTour VALUES ('OKRs Cycle')
END
GO

IF NOT EXISTS (SELECT * FROM GuidedTour WHERE Name = 'Create New or Contribute')
BEGIN
INSERT INTO GuidedTour VALUES ('Create New or Contribute')
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'OnBoardingScreen')
Begin
Create Table OnBoardingScreen (ScreenId int Identity(1,1) primary key, PageId int, PageName varchar(100),ControlType varchar(50), ControlValue text,Flow int,
CreatedBy bigint, CreatedOn datetime, UpdatedBy bigint, updatedOn datetime, isActive bit)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'I welcome you to Unlock:OKR.~ I am the CEO of the organization and I will help you to create and align yourself to your organizational objectives.~ Let''s start with the basics.~ Have you heard about OKRs(Objectives & Key Results)?~')
BEGIN
INSERT INTO OnBoardingScreen values (1,'Screen1', 'Body','I welcome you to Unlock:OKR.~ I am the CEO of the organization and I will help you to create and align yourself to your organizational objectives.~ Let''s start with the basics.~ Have you heard about OKRs(Objectives & Key Results)?~',0,
795,getdate(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'I Know~')
BEGIN
INSERT INTO OnBoardingScreen values (1,'Screen1','Button','Yes, I Know~',0,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Let''s Explore~')
BEGIN
INSERT INTO OnBoardingScreen values (1,'Screen1','Button','No, Let''s Explore~',0,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Let''s explore together!~ I will Guide you through a step by step process to understand and create your first set of OKRs.~ Objectives are your big, ambitious goals.~ Key Results are how you want to achieve and measure the achievement of an objective.~')
BEGIN
INSERT INTO OnBoardingScreen values (2,'Explore1','Body','Let''s explore together!~ I will Guide you through a step by step process to understand and create your first set of OKRs.~ Objectives are your big, ambitious goals.~ Key Results are how you want to achieve and measure the achievement of an objective.~',1,795,GETDATE(),null,null,1)
END
GO


IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Some Examples~')
BEGIN
INSERT INTO OnBoardingScreen values (2,'Explore1','Button','Some Examples~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Here are some of the examples:~ For Operations Group:~ Improve our IT and Infrastructure~ Improve inhouse IT services satisfaction by 15 points~ Lower cloud backup time by 6 hours~ Reduce systems downtime from 3% to 0.1%~')
BEGIN
INSERT INTO OnBoardingScreen values (3,'Explore2','Body','Here are some of the examples:~ For Operations Group:~ Improve our IT and Infrastructure~ Improve inhouse IT services satisfaction by 15 points~ Lower cloud backup time by 6 hours~ Reduce systems downtime from 3% to 0.1%~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'More~' and PageName = 'Explore2')
BEGIN
INSERT INTO OnBoardingScreen values (3,'Explore2','Button','More~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Here are some of the examples:~ For Product Management group:~  Grow revenue per customer~ Improve LTV from $4,300 to $6,100~ Improve upsell/crossSell revenue from 14% to 18%~ Reduce churn to below 11%~')
BEGIN
INSERT INTO OnBoardingScreen values (4	,'More1','Body','Here are some of the examples:~ For Product Management group:~  Grow revenue per customer~ Improve LTV from $4,300 to $6,100~ Improve upsell/crossSell revenue from 14% to 18%~ Reduce churn to below 11%~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'More~' and PageName = 'More1')
BEGIN
INSERT INTO OnBoardingScreen values (4,'More1','Button','More~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Here are some of the examples:~ For Operations Group:~ Improve our IT and Infrastructure~ Improve inhouse IT services satisfaction by 15 points~ Lower cloud backup time by 6 hours~ Reduce systems downtime from 3% to 0.1%~')
BEGIN
INSERT INTO OnBoardingScreen values (5,'More2','Body','Here are some of the examples:~ For Operations Group:~ Improve our IT and Infrastructure~ Improve inhouse IT services satisfaction by 15 points~ Lower cloud backup time by 6 hours~ Reduce systems downtime from 3% to 0.1%~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Back~')
BEGIN
INSERT INTO OnBoardingScreen values (5,'More2','Button','Back~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Wonderful!~ Let me share with you some best practices on OKRs.~ Thinking of goals and ways to achieve them is not always easy.~')
BEGIN
INSERT INTO OnBoardingScreen values (6,'Explore3','Body','Wonderful!~ Let me share with you some best practices on OKRs.~ Thinking of goals and ways to achieve them is not always easy.~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'video' and PageName = 'Explore3')
BEGIN
INSERT INTO OnBoardingScreen values (6,'Explore3','Video','video',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Great!~ Now, Let''s create your first OKR.~')
BEGIN
INSERT INTO OnBoardingScreen values (7,'Explore4','Body',' Great!~ Now, Let''s create your first OKR.~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Wonderful!~ Let me share with you some best practices on OKRs.~ Thinking of goals and ways to achieve them is not always easy.~')
BEGIN
INSERT INTO OnBoardingScreen values (8,'Flow2','Body','Wonderful!~ Let me share with you some best practices on OKRs.~ Thinking of goals and ways to achieve them is not always easy.~',2,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'I''m ready!~' and PageName = 'Explore4')
BEGIN
INSERT INTO OnBoardingScreen values (7,'Explore4','Button','I''m ready!~',1,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'video' and PageName = 'Flow2')
BEGIN
INSERT INTO OnBoardingScreen values (8,'Flow2','Video','video',2,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'I''m ready!~' and PageName = 'Flow2LastScreen')
BEGIN
INSERT INTO OnBoardingScreen values (9,'Flow2LastScreen','Button','I''m ready!~',2,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM OnBoardingScreen WHERE CONVERT(VARCHAR(Max),ControlValue) = 'Now let me take you to your working space where you can create your OKRs.~')
BEGIN
INSERT INTO OnBoardingScreen values (9,'Flow2LastScreen','Body','Now let me take you to your working space where you can create your OKRs.~',2,795,GETDATE(),null,null,1)
END
GO

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'OnBoardingControl')
Begin
Create Table OnBoardingControl (Id int Identity(1,1) primary key, employeeId bigint, skipCount int, ReadyCount int,
CreatedBy bigint, CreatedOn datetime, UpdatedBy bigint, updatedOn datetime, isActive bit)
END
GO

 
------End Sprint 2.9.6






























