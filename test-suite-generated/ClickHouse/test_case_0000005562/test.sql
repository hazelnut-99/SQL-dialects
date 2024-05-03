SELECT DISTINCT arrayReduce('quantilesDeterministic(0, 0.5, 0.9, 1)', materialize([]::Array(DateTime('UTC'))), []::Array(UInt64)) FROM numbers(1000) LIMIT 10;
