SELECT id, haystack, needle, 'x', replaceRegexpOne(haystack, needle, 'x') FROM test_tab ORDER BY id;
