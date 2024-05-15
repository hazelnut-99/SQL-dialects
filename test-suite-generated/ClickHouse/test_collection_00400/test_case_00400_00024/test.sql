SELECT toUInt64(2147483648) AS x, b == x, x == ((b - 42) + x) FROM decimal WHERE a = 42;
