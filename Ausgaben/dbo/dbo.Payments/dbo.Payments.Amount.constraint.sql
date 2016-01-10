alter table dbo.Payments
	add constraint CK_Payments_Amount
	check (Amount <> 0)
