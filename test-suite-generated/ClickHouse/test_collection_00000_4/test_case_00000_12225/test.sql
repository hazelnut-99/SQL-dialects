SELECT cityHash64(map(), CAST(materialize('') AS LowCardinality(Nullable(String))));
