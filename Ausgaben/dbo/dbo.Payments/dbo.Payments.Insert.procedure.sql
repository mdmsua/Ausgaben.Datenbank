create procedure dbo.InsertPayment
	@Id				uniqueidentifier,
	@AccountId		uniqueidentifier,
	@CategoryId		smallint,
	@Amount			decimal(8,2),
	@Timestamp		datetimeoffset	= null,
	@Description	nvarchar(max)	= null,
	@CreatedAt		datetimeoffset	= null,
	@UpdatedAt		datetimeoffset	= null,
	@Deleted		bit
as
begin
	declare @Type bit
	select @Type = [Type] from dbo.Categories where Id = @CategoryId
	if @Type is not null and @Type = 1 set @Amount = abs(@Amount)
	else if @Type is not null and @Type = 0 set @Amount = -abs(@Amount)

	set @Timestamp = isnull(@Timestamp, sysdatetimeoffset())

	begin transaction
	
	insert into dbo.Payments ([Id], [AccountId], [CategoryId], [Amount], [Timestamp], [Description])
	values (@Id, @AccountId, @CategoryId, @Amount, @Timestamp, @Description)
	
	update dbo.Accounts set Balance += @Amount where Id = @AccountId

	commit transaction
	
	select [Version] from dbo.Payments where Id = @Id
end