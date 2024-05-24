SELECT bitShiftLeft(toUInt256(1), number) x, bitShiftRight(x, number) y, toTypeName(x), toTypeName(y) FROM numbers(256) ORDER BY number;
