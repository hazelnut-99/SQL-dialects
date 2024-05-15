SELECT extractAllGroupsVertical(materialize(CAST('hello world' AS FixedString(12))), '(\\w+)');
