SELECT id, haystack, 'l', replacement, replaceRegexpAll(haystack, 'l', replacement) FROM test_tab ORDER BY id;
