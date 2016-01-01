CREATE TABLE [dbo].[Accounts]
(
	[Id] INT NOT NULL IDENTITY(1,1) CONSTRAINT [PK_Accounts_Id] PRIMARY KEY,
	[Name] NVARCHAR(512) NOT NULL CONSTRAINT [CK_Accounts_Name] CHECK (LEN(Name) > 0),
	[Description] NVARCHAR(MAX) NULL,
	[UserId] INT NOT NULL CONSTRAINT [FK_Accounts_UserId_Users] FOREIGN KEY REFERENCES dbo.Users(Id),
	INDEX [IX_Accounts_UserId] (UserId)
)