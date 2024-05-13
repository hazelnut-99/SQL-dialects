WITH x -> toString(x) AS lambda SELECT arrayMap(x -> lambda(x), [1,2,3]);
WITH x -> toString(x) AS lambda SELECT arrayMap(x -> arrayMap(y -> concat(lambda(x), '_', lambda(y)), [1,2,3]), [1,2,3]);
