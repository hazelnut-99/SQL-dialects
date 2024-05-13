SELECT count(*) FROM table WHERE (arrayExists(x -> ((x.1) = toLowCardinality('pattern')), values) = 1);
