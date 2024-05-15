SELECT id, haystack, needle, replacement, replaceRegexpAll('Hello World', needle, replacement) FROM test_tab ORDER BY id;
