SELECT JSONExtract(materialize('{"not_a_key":"value"}'), 'Tuple(key LowCardinality(Nullable(String)))');
