SELECT id, haystack, needle, 'x', replaceAll(haystack, needle, 'x') FROM test_tab ORDER BY id;
