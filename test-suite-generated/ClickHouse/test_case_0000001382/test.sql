SELECT 'roundBankers() : ', toDecimal256('1234567890.123456789', 40) AS x, -x AS y, roundBankers(x), roundBankers(y), roundBankers(x, -3), roundBankers(y, -3);
