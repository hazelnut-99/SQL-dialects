SELECT id, haystack, 'l', replacement, replaceRegexpAll('Hello World', 'l', replacement) FROM test_tab ORDER BY id;
