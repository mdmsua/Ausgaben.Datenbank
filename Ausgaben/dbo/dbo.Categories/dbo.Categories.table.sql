CREATE TABLE [dbo].[Categories]
(
	[Id]		HIERARCHYID		NOT NULL,
	[Name]		NVARCHAR(128)	NOT NULL,
	[Type]		BIT				NULL	-- 0: expense, 1: income
)
