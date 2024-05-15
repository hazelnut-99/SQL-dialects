SELECT JSONExtract(materialize('{"key":"value"}'), 'Tuple(key LowCardinality(Nullable(String)))');
