SELECT JSONExtract(data, 'Tuple(
                            a LowCardinality(Int32),
                            b LowCardinality(Int32),
                            c LowCardinality(Int32),
                            d LowCardinality(Int32)
                            )') AS json FROM test_low_cardinality_int;
