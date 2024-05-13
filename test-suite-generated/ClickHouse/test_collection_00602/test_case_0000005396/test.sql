SELECT countMerge(x) AS y FROM ( SELECT countState() * 0 AS x FROM ( SELECT 1 UNION ALL SELECT 2));
