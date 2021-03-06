﻿create table [dbo].[Accounts]
(
	[Id]			uniqueidentifier	not null,
	[Name]			nvarchar(512)		not null,
	[Description]	nvarchar(max)		null,
	[User]			nvarchar(128)		not null,
	[Balance]		decimal(11,2)		not null,
	[Version]		timestamp			not null,
	[CreatedAt]		datetimeoffset		not null,
	[UpdatedAt]		datetimeoffset		null,
	[Deleted]		bit					not null
)