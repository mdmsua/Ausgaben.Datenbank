create procedure dbo.UpdateAccount
	@Id					uniqueidentifier,
	@Name				nvarchar(512),
	@User				nvarchar(128),
	@Version_Original	binary(8),
	@Description		nvarchar(max)	= null,
	@Balance			decimal(11,2)	= null,
	@CreatedAt			datetimeoffset	= null,
	@UpdatedAt			datetimeoffset	= null,
	@Deleted			bit				= 0
as
begin
	begin transaction

	update dbo.Accounts set
		[Name] = @Name,
		[Description] = @Description,
		[UpdatedAt] = sysdatetimeoffset(),
		[Deleted] = @Deleted
	where [Id] = @Id and [Version] = @Version_Original

	if @Deleted = 1
		update dbo.Payments set Deleted = 1 where AccountId = @Id

	commit transaction
	
	select [Version] from dbo.Accounts where Id = @Id
end