SELECT JSONExtract(data, 'Tuple(
                            a LowCardinality(String),
                            b LowCardinality(String),
                            c LowCardinality(String),
                            d LowCardinality(String)
                            )') AS json FROM test_low_cardinality_string;
