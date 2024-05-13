SELECT id, haystack, needle, replacement, replaceRegexpOne('Hello World', needle, replacement) FROM test_tab ORDER BY id;
