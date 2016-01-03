CREATE UNIQUE INDEX [UQ_Accounts_Name_User]
	ON [dbo].[Accounts]
	([Name], [User]) WHERE [Deleted] = 0
