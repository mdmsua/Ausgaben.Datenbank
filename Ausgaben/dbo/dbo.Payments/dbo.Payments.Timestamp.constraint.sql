alter table dbo.Payments
	add constraint DF_Payments_Timestamp
	default sysdatetimeoffset()
	for [Timestamp]
