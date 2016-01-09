alter table [dbo].[Categories]
	add constraint [CK_Categories_Name]
	check (LEN(Name) > 0)
