SELECT JSONExtract(materialize('{"a": -9223372036854775807}'), 'a', 'LowCardinality(FixedString(20))');
