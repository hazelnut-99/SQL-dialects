SELECT JSONExtract(materialize('{"key":null}'), 'Tuple(key LowCardinality(Nullable(String)))');
