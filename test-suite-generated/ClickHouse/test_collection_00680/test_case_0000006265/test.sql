SELECT isNull(a), isNotNull(a) FROM decimal WHERE a = toDecimal32(5.5, 1);
