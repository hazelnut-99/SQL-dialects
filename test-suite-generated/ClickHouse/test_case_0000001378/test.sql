SELECT 'floor()        : ', toDecimal128('1234567890.123456789', 20) AS x, -x AS y, floor(x), floor(y), floor(x, -3), floor(y, -3);
