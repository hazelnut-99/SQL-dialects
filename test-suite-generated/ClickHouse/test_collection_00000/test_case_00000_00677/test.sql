SELECT arrayMap(x -> materialize(123), arrayMap(x -> toString(x), [1, 2, 3]));
