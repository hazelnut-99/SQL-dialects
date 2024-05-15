select count(s) from test where regexp_matches(s, 'aaa.', 's');
