SELECT arrayMap(x -> x + arrayMap(x -> (SELECT 5), [1])[1], [1,2,3]);
