SELECT groupArrayMerge(y * 5) FROM (SELECT groupArrayState(x) AS y FROM (SELECT 1 AS x));
