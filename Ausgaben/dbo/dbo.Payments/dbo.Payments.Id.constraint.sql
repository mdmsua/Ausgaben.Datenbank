alter table dbo.Payments
	add constraint DF_Payments_Id
	default newid()
	for Id
