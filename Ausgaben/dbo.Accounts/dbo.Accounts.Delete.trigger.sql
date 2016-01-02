CREATE TRIGGER [TR_Accounts_Delete]
	ON [dbo].[Accounts]
	INSTEAD OF DELETE
	AS
	BEGIN
		UPDATE dbo.Accounts
		SET
			Deleted = 1,
			UpdatedAt = SYSDATETIMEOFFSET()
		FROM dbo.Accounts a INNER JOIN deleted d ON a.Id = d.Id
	END
