SELECT arrayFold((acc, x) -> toNullable(acc + (x * 2)), [1, 2, 3, 4], toNullable(toInt64(3)));
