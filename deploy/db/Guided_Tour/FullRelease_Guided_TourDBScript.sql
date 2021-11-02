
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
BEGIN
create table OnBoardingScreen (ScreenId int Identity(1,1) primary key, PageId int, PageName varchar(100),ControlType varchar(50), ControlValue text,Flow int,
CreatedBy bigint, CreatedOn datetime, UpdatedBy bigint, updatedOn datetime, isActive bit)
End
Go


--insert into OnBoardingScreen (PageId,PageName,ControlType,ControlValue,Flow,CreatedBy,CreatedOn,isActive) 
--values (1,'Screen1', 'Body','I welcome you to Unlock:OKR.~ I am the CEO of the organization and I will help you to create and align yourself to your organizational objectives.~ Let''s start with the basics.~ Have you heard about OKRs(Objectives & Key Results)?~',0,
--795,2021-09-29,1),
--(1,'Screen1','Button','Yes, I Know~',0,795,2021-09-29,1),
--(1,'Screen1','Button','No, Let''s Explore~',0,795,2021-09-29,1),
--(2,'Explore1','Body','Let''s explore together!~ I will Guide you through a step by step process to understand and create your first set of OKRs.~ Objectives are your big, ambitious goals.~ Key Results are how you want to achieve and measure the achievement of an objective.~',1,795,2021-09-29,1),
--(2,'Explore1','Button','Some Examples~',1,795,2021-09-29,1),
--(3,'Explore2','Body','Here are some of the examples:~ For Operations Group:~ Improve our IT and Infrastructure~ Improve inhouse IT services satisfaction by 15 points~ Lower cloud backup time by 6 hours~ Reduce systems downtime from 3% to 0.1%~',1,795,2021-09-29,1),
--(3,'Explore2','Button','More~',1,795,2021-09-29,1),
--(4,'More1','Body','Here are some of the examples:~ For Product Management group:~  Grow revenue per customer~ Improve LTV from $4,300 to $6,100~ Improve upsell/crossSell revenue from 14% to 18%~ Reduce churn to below 11%~',1,795,2021-09-29,1),
--(4,'More1','Button','More~',1,795,2021-09-29,1),
--(5,'More2','Body','Here are some of the examples:~ For Operations Group:~ Improve our IT and Infrastructure~ Improve inhouse IT services satisfaction by 15 points~ Lower cloud backup time by 6 hours~ Reduce systems downtime from 3% to 0.1%~',1,795,2021-09-29,1),
--(5,'More2','Button','Back~',1,795,2021-09-29,1),
--(6,'Explore3','Body','Wonderful!~ Let me share with you some best practices on OKRs.~ Thinking of goals and ways to achieve them is not always easy.~',1,795,2021-09-29,1),
--(6,'Explore3','Video','video',1,795,2021-09-29,1),
--(7,'Explore4','Body',' Great!~ Now, Let''s create your first OKR.~',1,795,2021-09-29,1),
--(7,'Explore4','Button','I''m ready!~',1,795,2021-09-29,1),
--(8,'Flow2','Body','Wonderful!~ Let me share with you some best practices on OKRs.~ Thinking of goals and ways to achieve them is not always easy.~',2,795,2021-09-29,1),
--(8,'Flow2','Video','video',2,795,2021-09-29,1),
--(9,'Flow2LastScreen','Button','I''m ready!~',2,795,2021-09-29,1),
--(9,'Flow2LastScreen','Body','Now let me take you to your working space where you can create your OKRs.~',2,795,2021-09-29,1)
--Go

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'OnBoardingControl')
BEGIN
create table OnBoardingControl (Id int Identity(1,1) primary key, employeeId bigint, skipCount int, ReadyCount int,
CreatedBy bigint, CreatedOn datetime, UpdatedBy bigint, updatedOn datetime, isActive bit)
End
Go

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Test')
BEGIN
CREATE TABLE [dbo].[Test](
    [Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,	
		)
End
Go







