SELECT JSONExtract(data, 'Tuple(
                            a LowCardinality(Int8),
                            b LowCardinality(Int8),
                            c LowCardinality(Int8),
                            d LowCardinality(Int8)
                            )') AS json FROM test_low_cardinality_int;
