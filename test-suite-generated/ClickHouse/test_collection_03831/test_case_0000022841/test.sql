SELECT DISTINCT arrayReduce('quantileDeterministic(0.5)', materialize([]::Array(DateTime('UTC'))), []::Array(UInt64)) FROM numbers(1000) LIMIT 10;
