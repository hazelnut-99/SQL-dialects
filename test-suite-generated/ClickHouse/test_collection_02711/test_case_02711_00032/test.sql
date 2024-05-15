SELECT id, haystack, needle, 'x', replaceRegexpOne('Hello World', needle, 'x') FROM test_tab ORDER BY id;
