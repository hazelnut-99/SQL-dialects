SELECT arrayFold((acc, x) -> x, materialize(CAST([NULL], 'Array(Nullable(UInt8))')), toUInt8(toNullable(0)));
