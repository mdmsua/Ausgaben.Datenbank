ALTER TABLE [dbo].[Accounts]
	ADD CONSTRAINT [CK_Accounts_Name]
	CHECK (LEN([Name]) > 0)
