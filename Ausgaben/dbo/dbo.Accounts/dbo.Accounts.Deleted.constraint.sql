ALTER TABLE [dbo].[Accounts]
	ADD CONSTRAINT [DF_Accounts_Deleted]
	DEFAULT 0
	FOR [Deleted]
