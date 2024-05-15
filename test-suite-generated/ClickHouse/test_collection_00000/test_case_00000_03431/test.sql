SELECT concat('With ', materialize('foo' :: LowCardinality(Nullable(String))));
