SELECT arrayFold((acc, x) -> acc + x, materialize(CAST([NULL], 'Array(Nullable(UInt8))')), toUInt64(toNullable(0)));
