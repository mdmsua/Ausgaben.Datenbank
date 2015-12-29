﻿CREATE TABLE [dbo].[Accounts]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Name] NVARCHAR(512) NOT NULL,
	[Description] NVARCHAR(MAX) NULL,
	[User] INT NOT NULL,
	CONSTRAINT [PK_Accounts_Id] PRIMARY KEY NONCLUSTERED (Id ASC),
	CONSTRAINT [CK_Accounts_Name] CHECK (LEN(Name) > 0),
	CONSTRAINT [FK_Accounts_User_Users] FOREIGN KEY ([User]) REFERENCES Users(Id)
)