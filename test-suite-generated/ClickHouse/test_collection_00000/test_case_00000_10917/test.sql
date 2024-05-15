SELECT JSONExtract(materialize('{"a": 131231, "b": 1234567890}'), 'b', 'LowCardinality(FixedString(10))');
