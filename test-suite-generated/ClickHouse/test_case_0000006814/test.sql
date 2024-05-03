SELECT JSONExtract(materialize('{"a": {"b": 131231} }'), 'a', 'LowCardinality(FixedString(12))');
