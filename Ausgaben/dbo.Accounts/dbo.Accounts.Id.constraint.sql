ALTER TABLE [dbo].[Accounts]
	ADD CONSTRAINT [DF_Accounts_Id]
	DEFAULT NEWID()
	FOR [Id]
