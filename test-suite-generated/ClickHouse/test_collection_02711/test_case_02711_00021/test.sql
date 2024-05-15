SELECT id, haystack, needle, 'x', replaceRegexpAll(haystack, needle, 'x') FROM test_tab ORDER BY id;
