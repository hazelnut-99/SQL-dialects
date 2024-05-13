SELECT id, haystack, 'l', replacement, replaceRegexpOne(haystack, 'l', replacement) FROM test_tab ORDER BY id;
