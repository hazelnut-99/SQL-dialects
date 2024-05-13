SELECT arrayJoin(CAST(['hello', 'world'] AS Array(FixedString(5)))) LIKE '%hello';
