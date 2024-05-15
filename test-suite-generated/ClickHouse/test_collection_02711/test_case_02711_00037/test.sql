SELECT id, haystack, needle, replacement, replaceRegexpOne(haystack, needle, replacement) FROM test_tab ORDER BY id;
