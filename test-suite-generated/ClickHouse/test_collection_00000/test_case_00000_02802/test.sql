SELECT sumMerge(y) AS z FROM ( SELECT sumState(x) * 11 AS y FROM ( SELECT 1 AS x UNION ALL SELECT 2 AS x));
