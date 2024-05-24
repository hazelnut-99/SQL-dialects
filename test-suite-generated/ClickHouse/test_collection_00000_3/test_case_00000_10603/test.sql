SELECT arrayMap(x -> x + arrayMap(x -> 5, [1])[1], [1,2,3]);
