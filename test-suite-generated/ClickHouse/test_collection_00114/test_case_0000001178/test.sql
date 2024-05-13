SELECT arrayExists(x -> materialize(1), arrayMap(x -> toString(x), [1, 2, 3]));
