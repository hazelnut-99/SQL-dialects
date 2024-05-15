SELECT id, haystack, needle, replacement, replaceRegexpAll(haystack, needle, replacement) FROM test_tab ORDER BY id;
