SELECT concat('With ', materialize('bar' :: LowCardinality(FixedString(3))));
