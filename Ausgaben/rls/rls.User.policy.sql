create security policy rls.[User]
    add filter predicate rls.UserPredicate([User]) on dbo.Accounts
    with (state = on)