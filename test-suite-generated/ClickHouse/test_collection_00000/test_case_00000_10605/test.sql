SELECT 5 AS constant, arrayMap(x -> x + arrayMap(x -> constant, [1])[1], [1,2,3]);
