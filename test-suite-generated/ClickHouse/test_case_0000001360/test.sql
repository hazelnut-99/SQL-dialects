SELECT toDecimal64('123456789.123456789', 9) AS x, -x AS y, roundBankers(x), roundBankers(y), roundBankers(x, 5), roundBankers(y, 5), roundBankers(x, -5), roundBankers(y, -5);
