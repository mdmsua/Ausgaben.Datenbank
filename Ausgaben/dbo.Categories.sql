CREATE TABLE [dbo].[Categories]
(
	[Id] INT NOT NULL IDENTITY(1,1) CONSTRAINT [PK_Categories_Id] PRIMARY KEY,
	[Name] NVARCHAR(128) NOT NULL CONSTRAINT [CK_Categories_Name] CHECK (LEN(Name) > 0),
	[Type] BIT NOT NULL, -- 0: expense, 1: income
)
