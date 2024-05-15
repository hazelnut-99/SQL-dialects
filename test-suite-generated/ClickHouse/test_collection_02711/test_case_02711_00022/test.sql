SELECT id, haystack, needle, 'x', replaceRegexpAll('Hello World', needle, 'x') FROM test_tab ORDER BY id;
