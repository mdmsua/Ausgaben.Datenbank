ALTER TABLE [dbo].[Accounts]
	ADD CONSTRAINT [CK_Accounts_User]
	CHECK (LEN([User]) > 0)
