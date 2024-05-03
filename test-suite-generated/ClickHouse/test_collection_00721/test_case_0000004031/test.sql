SELECT JSONExtract(data, 'Tuple(
                            a LowCardinality(Int16),
                            b LowCardinality(Int16),
                            c LowCardinality(Int16),
                            d LowCardinality(Int16)
                            )') AS json FROM test_low_cardinality_int;
