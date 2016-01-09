alter table dbo.Categories
	add constraint FK_Categories_ParentId_Categories_Id
	foreign key (ParentId)
	references dbo.Categories (Id)
