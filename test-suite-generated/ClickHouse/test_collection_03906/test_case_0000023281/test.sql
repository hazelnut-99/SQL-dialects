SELECT id, haystack, needle, 'x', replaceAll('Hello World', needle, 'x') FROM test_tab ORDER BY id;
