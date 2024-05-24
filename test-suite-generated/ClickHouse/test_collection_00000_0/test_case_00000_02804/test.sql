SELECT countMerge(x) AS y FROM ( SELECT 0 * countState() AS x FROM ( SELECT 1 UNION ALL SELECT 2));
