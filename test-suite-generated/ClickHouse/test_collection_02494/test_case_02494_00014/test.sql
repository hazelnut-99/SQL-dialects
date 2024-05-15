SELECT a FROM (SELECT sipHash64(a) AS a FROM optimize_sorting) WHERE a != 0 ORDER BY a;
