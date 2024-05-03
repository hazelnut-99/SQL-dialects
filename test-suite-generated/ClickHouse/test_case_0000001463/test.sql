SELECT bitShiftLeft(toInt128(1), number) x, bitShiftRight(x, number) y, toTypeName(x), toTypeName(y) FROM numbers(127) ORDER BY number;
