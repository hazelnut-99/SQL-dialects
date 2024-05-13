SELECT arrayFold((acc, x) -> (acc + (x * 2)), []::Array(Int64), toInt64(3));
