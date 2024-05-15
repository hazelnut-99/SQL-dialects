SELECT arrayReduce('any_respect_nulls', [10, NULL]::Array(Nullable(UInt8))) as a, toTypeName(a);
