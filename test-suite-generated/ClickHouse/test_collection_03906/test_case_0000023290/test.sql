SELECT id, haystack, needle, 'x', replaceOne(haystack, needle, 'x') FROM test_tab ORDER BY id;
