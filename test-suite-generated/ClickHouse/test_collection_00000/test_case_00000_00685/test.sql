SELECT arrayCount(x -> materialize(0), arrayMap(x -> toString(x), [1, 2, 3]));
