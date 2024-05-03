SELECT JSONExtract(data, 'Tuple(
                            a LowCardinality(Int64),
                            b LowCardinality(Int64),
                            c LowCardinality(Int64),
                            d LowCardinality(Int64)
                            )') AS json FROM test_low_cardinality_int;
