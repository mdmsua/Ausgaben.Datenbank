alter table dbo.Payments
	add constraint DF_Payments_CreatedAt
	default sysdatetimeoffset()
	for CreatedAt
