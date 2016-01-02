ALTER TABLE [dbo].[Accounts]
	ADD CONSTRAINT [DF_Accounts_CreatedAt]
	DEFAULT SYSDATETIMEOFFSET()
	FOR [CreatedAt]
