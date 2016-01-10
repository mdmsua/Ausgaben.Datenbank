alter table dbo.Payments
	add constraint FK_Payments_CategoryId_Categories_Id
	foreign key (CategoryId)
	references dbo.Categories (Id)
