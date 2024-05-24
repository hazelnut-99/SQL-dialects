SELECT arrayMap(x -> x + arrayMap(y -> x + y, [1])[1], [1,2,3]);
