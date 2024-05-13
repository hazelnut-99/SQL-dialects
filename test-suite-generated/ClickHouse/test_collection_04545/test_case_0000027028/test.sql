SELECT arrayFold((acc, x) -> x, materialize(CAST('[0, 1]', 'Array(Nullable(UInt8))')), toUInt8(toNullable(0)));
