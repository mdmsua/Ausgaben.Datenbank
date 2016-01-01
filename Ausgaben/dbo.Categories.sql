﻿CREATE TABLE [dbo].[Categories]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[Name] NVARCHAR(128) NOT NULL,
	[Type] BIT NOT NULL, -- 0: expense, 1: income
	CONSTRAINT [PK_Categories_Id] PRIMARY KEY NONCLUSTERED (Id ASC),
	CONSTRAINT [CK_Categories_Name] CHECK (LEN(Name) > 0)
)
