ALTER TABLE [dbo].[Categories]
	ADD CONSTRAINT [CK_Categories_Name]
	CHECK (LEN(Name) > 0)
