SELECT arrayCumSum(x -> materialize(10), arrayMap(x -> toString(x), [1, 2, 3]));
