create procedure dbo.UpdatePayment
	@Id					uniqueidentifier,
	@AccountId			uniqueidentifier,
	@CategoryId			smallint,
	@Amount				decimal(8,2),
	@Timestamp			datetimeoffset,
	@Version_Original	binary(8),
	@Description		nvarchar(max)	= null,
	@CreatedAt			datetimeoffset	= null,
	@UpdatedAt			datetimeoffset	= null,
	@Deleted			bit
as
begin
	begin transaction
	
	update dbo.Payments set
		[Timestamp] = @Timestamp,
		[Description] = @Description,
		[UpdatedAt] = sysdatetimeoffset(),
		[Deleted] = @Deleted
	where Id = @Id and [Version] = @Version_Original
	
	if @Deleted = 1
		update dbo.Accounts set Balance -= @Amount where Id = @AccountId

	commit transaction
	
	select [Version] from dbo.Payments where Id = @Id
end