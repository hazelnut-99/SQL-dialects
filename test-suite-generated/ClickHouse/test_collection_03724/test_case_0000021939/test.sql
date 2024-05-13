SELECT JSONExtract(materialize('{"a": 131231}'), 'a', 'LowCardinality(FixedString(6))') FROM numbers(2);
