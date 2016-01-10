alter table dbo.Payments
	add constraint FK_Payments_AccountId_Accounts_Id
	foreign key (AccountId)
	references dbo.Accounts (Id)
