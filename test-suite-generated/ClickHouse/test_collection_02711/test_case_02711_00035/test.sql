SELECT id, haystack, 'l', replacement, replaceRegexpOne('Hello World', 'l', replacement) FROM test_tab ORDER BY id;
