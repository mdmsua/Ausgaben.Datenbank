CREATE TABLE [dbo].[Payments]
(
	[Id] UNIQUEIDENTIFIER NOT NULL CONSTRAINT [PK_Payments_Id] PRIMARY KEY CONSTRAINT [DF_Payments_Id] DEFAULT (NEWID()),
	[AccountId] UNIQUEIDENTIFIER NOT NULL CONSTRAINT [FK_Payments_AccountId_Accounts] FOREIGN KEY REFERENCES dbo.Accounts(Id),
	[CategoryId] HIERARCHYID NOT NULL CONSTRAINT [FK_Payments_CategoryId_Categories] FOREIGN KEY REFERENCES dbo.Categories(Id),
	[Amount] DECIMAL(8,2) NOT NULL CONSTRAINT [CK_Payments_Amount] CHECK (Amount <> 0),
	[Timestamp] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_Payments_Day] DEFAULT SYSDATETIMEOFFSET(),
	INDEX [IX_Payments_AccountId] (AccountId),
	INDEX [IX_Payments_CategoryId] (CategoryId)
)
