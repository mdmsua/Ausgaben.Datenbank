alter table dbo.Payments
	add constraint DF_Payments_Deleted
	default 0
	for Deleted
