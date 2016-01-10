create table dbo.Payments
(
	[Id]			uniqueidentifier	not null,
	[AccountId]		uniqueidentifier	not null,
	[CategoryId]	smallint			not null,
	[Amount]		decimal(8,2)		not null,
	[Description]	nvarchar(max)		null,
	[Timestamp]		datetimeoffset		not null,
	[Version]		timestamp			not null,
	[CreatedAt]		datetimeoffset		not null,
	[UpdatedAt]		datetimeoffset		null,
	[Deleted]		bit					not null
)
