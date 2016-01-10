create function rls.AccountPredicate
(
	@AccountId	uniqueidentifier
)
returns table with schemabinding
as
	return select 1 as fn_securitypredicate_result
	from dbo.Accounts
	where Id = @AccountId and [User] = cast(session_context(N'User') as nvarchar(128))