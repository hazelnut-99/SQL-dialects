SELECT if(x = 0, 'ok', 'fail') FROM (SELECT toNullable(toUInt8(0)) AS x);
