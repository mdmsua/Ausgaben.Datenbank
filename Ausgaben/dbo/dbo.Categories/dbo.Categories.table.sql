create table [dbo].[Categories]
(
	[Id]		smallint		not null,
	[ParentId]	smallint		null,
	[Name]		nvarchar(128)	not null,
	[Type]		bit				null	-- 0: expense, 1: income
)
