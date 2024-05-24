SELECT arrayReduce('sum', [NULL, 10]::Array(Nullable(UInt8))) as a, toTypeName(a);
