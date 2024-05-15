SELECT groupUniqArrayMerge(y * 5) FROM (SELECT groupUniqArrayState(x) AS y FROM (SELECT 1 AS x));
