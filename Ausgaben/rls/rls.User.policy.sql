CREATE SECURITY POLICY [rls].[User]
    ADD FILTER PREDICATE [rls].[fn_securitypredicate]([User]) ON [dbo].[Accounts]
    WITH (STATE = ON)