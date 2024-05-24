SELECT 'ceil()         : ', toDecimal256('1234567890.123456789', 40) AS x, -x AS y, ceil(x), ceil(y), ceil(x, -3), ceil(y, -3);
