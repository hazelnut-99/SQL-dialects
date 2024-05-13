SELECT 'trunc()        : ', toDecimal256('1234567890.123456789', 40) AS x, -x AS y, trunc(x), trunc(y), trunc(x, -3), trunc(y, -3);
