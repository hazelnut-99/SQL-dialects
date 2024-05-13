SELECT (tuple(sum(if((number % 2) = 0, toNullable(0), 123)) IGNORE NULLS), toUInt8(3)) FROM numbers(100);
