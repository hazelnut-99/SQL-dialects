SELECT groupArrayMerge(2)(y * 5) FROM (SELECT groupArrayState(2)(x) AS y FROM (SELECT 1 AS x));
