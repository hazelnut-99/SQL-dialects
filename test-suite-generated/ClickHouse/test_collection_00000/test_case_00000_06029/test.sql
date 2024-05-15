SELECT toTypeName(x), x, isNull(x), if(x = 0, 'fail', 'ok'), if(x = 1, 'fail', 'ok'), if(x >= 0, 'fail', 'ok')
FROM (SELECT if(1 = 0, toNullable(toUInt8(0)), NULL) AS x);
