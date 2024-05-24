SELECT toDecimal128('12345678901234567890123456789.123456789', 9) AS x, -x AS y, roundBankers(x), roundBankers(y), roundBankers(x, 3), roundBankers(y, 3);
