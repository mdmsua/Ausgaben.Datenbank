create security policy rls.Account
    add filter predicate rls.AccountPredicate(AccountId) on dbo.Payments
    with (state = on)