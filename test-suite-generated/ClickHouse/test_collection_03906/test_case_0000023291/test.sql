SELECT id, haystack, needle, 'x', replaceOne('Hello World', needle, 'x') FROM test_tab ORDER BY id;
