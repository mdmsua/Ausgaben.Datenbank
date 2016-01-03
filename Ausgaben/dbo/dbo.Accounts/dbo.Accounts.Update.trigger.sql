CREATE TRIGGER [TR_Accounts_Update]
	ON [dbo].[Accounts]
	INSTEAD OF UPDATE
	AS
	BEGIN
		DECLARE @generated TABLE
		(
			[Id]			UNIQUEIDENTIFIER,
			[Version]		VARBINARY(MAX),
			[UpdatedAt]		DATETIMEOFFSET
		)
		UPDATE dbo.Accounts
		SET
			Name = i.Name,
			Description = i.Description,
			UpdatedAt = SYSDATETIMEOFFSET()
		OUTPUT i.[Id],i.[Version], i.[UpdatedAt] INTO @generated
		FROM dbo.Accounts a INNER JOIN INSERTED i ON a.Id = i.Id
		SELECT g.[Id], g.[Version], g.[UpdatedAt] FROM @generated g JOIN dbo.Accounts a ON a.Id = g.Id
	END
