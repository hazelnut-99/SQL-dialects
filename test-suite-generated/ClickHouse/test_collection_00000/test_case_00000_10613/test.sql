SELECT (SELECT 5) AS subquery, arrayMap(x -> x + arrayMap(x -> subquery, [1])[1], [1,2,3]);
