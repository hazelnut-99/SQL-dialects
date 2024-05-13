WITH x -> toString(x) AS lambda SELECT arrayMap(x -> lambda(x), [1,2,3]);
