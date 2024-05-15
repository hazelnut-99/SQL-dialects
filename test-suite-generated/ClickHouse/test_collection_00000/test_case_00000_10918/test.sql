SELECT JSONExtract(materialize('{"a": 18446744073709551615}'), 'a', 'LowCardinality(FixedString(20))');
