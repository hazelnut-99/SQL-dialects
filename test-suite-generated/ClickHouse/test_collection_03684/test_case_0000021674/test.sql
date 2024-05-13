SELECT JSONExtract(data, 'Tuple(
                            a LowCardinality(UUID),
                            b LowCardinality(UUID),
                            c LowCardinality(UUID),
                            d LowCardinality(UUID)
                            )') AS json FROM test_low_cardinality_uuid;
