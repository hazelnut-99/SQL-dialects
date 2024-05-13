SELECT toUInt64(9223372036854775808) AS x, c == x, x == ((c - 42) + x) FROM decimal WHERE a = 42;
