SELECT arrayFold((acc, x) -> (acc + (x * 2)), []::Array(Nullable(Int64)), toInt64(toNullable(3)));
