select sipHash128Keyed((toUInt64(0),toUInt64(0)),char(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)) == sipHash128(char(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11));
