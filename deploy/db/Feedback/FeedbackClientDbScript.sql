-- START DML  2.9.1 C

IF NOT EXISTS(SELECT TOP 1 * FROM [FeedbackOnTypeMaster] where [Name] = 'Team')
BEGIN
Insert into FeedbackOnTypeMaster Values(4,'Team', 1)
END
GO






-- END DML 2.9.1 C

--\ir ./Sprint1/Feedback_Release_Patch.sql

-- No Change for 2.9.4

