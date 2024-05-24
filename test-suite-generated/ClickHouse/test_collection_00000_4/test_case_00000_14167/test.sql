SELECT arrayFold((acc, x) -> acc + x, materialize(CAST([1, 2, NULL], 'Array(Nullable(UInt8))')), toUInt64(toNullable(0)));
