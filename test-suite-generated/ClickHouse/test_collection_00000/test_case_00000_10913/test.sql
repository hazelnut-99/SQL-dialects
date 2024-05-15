SELECT JSONExtract(materialize('{"a": 131231, "b": 1234}'), 'b', 'LowCardinality(FixedString(4))');
