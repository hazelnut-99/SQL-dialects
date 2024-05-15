SELECT murmurHash2_32('\x02') = bitXor(toUInt32(0x5bd1e995 * bitXor(toUInt32(3 * 0x5bd1e995) AS a, bitShiftRight(a, 13))) AS b, bitShiftRight(b, 15));
