SELECT if(x = 0, 'ok', 'fail') FROM (SELECT if(toUInt8(0), NULL, toNullable(toUInt8(0))) AS x);
