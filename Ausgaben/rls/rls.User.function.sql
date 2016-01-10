create function rls.UserPredicate
(
	@User	nvarchar(128)
)
returns table with schemabinding
as
	return select 1 as fn_securitypredicate_result
    where cast(session_context(N'User') as nvarchar(128)) = @User