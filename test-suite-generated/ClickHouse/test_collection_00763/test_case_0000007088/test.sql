SELECT arrayMap(x -> (x + (arrayMap(y -> ((x + y) + toLowCardinality(1)), [])[1])), []);
