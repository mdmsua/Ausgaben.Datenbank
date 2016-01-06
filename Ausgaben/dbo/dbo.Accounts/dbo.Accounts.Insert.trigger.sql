CREATE TRIGGER [TR_Accounts_Insert]
	ON [dbo].[Accounts]
	INSTEAD OF INSERT
	AS
	BEGIN
		DECLARE @generated TABLE
		(
			[Id]		UNIQUEIDENTIFIER,
			[Version]	VARBINARY(MAX),
			[CreatedAt]	DATETIMEOFFSET
		)
		INSERT INTO dbo.Accounts
			([Name], [Description], [User], [Balance])
		OUTPUT inserted.[Id], inserted.[Version], inserted.[CreatedAt] INTO @generated
		SELECT
			 [Name], [Description], [User], [Balance]
		FROM inserted
		SELECT g.[Id], g.[Version], g.[CreatedAt] from @generated g JOIN dbo.Accounts a on g.Id = a.Id
	END
