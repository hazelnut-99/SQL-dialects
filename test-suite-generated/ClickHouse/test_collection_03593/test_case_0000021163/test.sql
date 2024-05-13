SELECT a, z FROM (SELECT sipHash64(a) AS a, a + 1 AS z FROM (SELECT a FROM optimize_sorting ORDER BY a + 1)) ORDER BY a + 1;
