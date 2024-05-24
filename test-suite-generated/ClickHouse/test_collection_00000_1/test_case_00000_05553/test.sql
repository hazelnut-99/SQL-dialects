SELECT extractAllGroupsHorizontal(materialize(CAST('hello world' AS FixedString(12))), CAST('(\\w+)' as FixedString(5)));
