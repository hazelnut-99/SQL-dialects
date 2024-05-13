SELECT concat('With ', materialize('foo' :: LowCardinality(String)));
