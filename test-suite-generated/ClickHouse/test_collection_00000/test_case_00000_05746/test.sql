SELECT extractGroups(materialize(CAST('hello world' AS FixedString(12))), CAST('(\\w+) (\\w+)' as FixedString(11)));
