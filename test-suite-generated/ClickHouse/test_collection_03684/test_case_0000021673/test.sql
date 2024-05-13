SELECT JSONExtract(data, 'Tuple(
                            a LowCardinality(FixedString(20)),
                            b LowCardinality(FixedString(20)),
                            c LowCardinality(FixedString(20)),
                            d LowCardinality(FixedString(20))
                            )') AS json FROM test_low_cardinality_string;
