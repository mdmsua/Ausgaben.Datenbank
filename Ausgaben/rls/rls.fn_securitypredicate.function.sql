CREATE FUNCTION [rls].[fn_securitypredicate]
(
	@User	NVARCHAR(128)
)
RETURNS TABLE WITH SCHEMABINDING
AS
	RETURN SELECT 1 AS fn_securitypredicate_result
    WHERE CAST(SESSION_CONTEXT(N'User') AS NVARCHAR(128)) = @User