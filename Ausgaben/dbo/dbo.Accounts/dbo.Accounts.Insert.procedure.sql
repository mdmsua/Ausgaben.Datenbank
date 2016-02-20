create procedure dbo.InsertAccount
	@Id				uniqueidentifier,
	@Name			nvarchar(512),
	@User			nvarchar(128),
	@Description	nvarchar(max)	= null,
	@Balance		decimal(11,2)	= null,
	@CreatedAt		datetimeoffset	= null,
	@UpdatedAt		datetimeoffset	= null,
	@Deleted		bit				= 0
as
begin
	set @User = cast(session_context(N'User') as nvarchar(128))
	insert into dbo.Accounts ([Id], [Name], [Description], [User], [Balance])
	values (@Id, @Name, @Description, @User, @Balance)
	select [Version] from dbo.Accounts where Id = @Id
end