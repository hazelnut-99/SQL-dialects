SELECT JSONExtractString('["a", "b", "c", "d", "e"]', idx) FROM (SELECT arrayJoin([2, NULL, 2147483646, 65535, 65535, 3]) AS idx);
