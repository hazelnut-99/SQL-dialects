SELECT arrayFold((acc, x) -> (acc + (x * 2)), [1, 2, 3, 4]::Array(Nullable(Int64)), toInt64(toNullable(3)));
