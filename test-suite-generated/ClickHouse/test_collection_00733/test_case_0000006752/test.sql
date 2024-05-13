SELECT concat('With ', materialize('bar' :: LowCardinality(Nullable(FixedString(3)))));
