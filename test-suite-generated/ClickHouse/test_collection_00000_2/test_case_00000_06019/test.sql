SELECT if(toUInt8(0), toNullable(toUInt8(0)), NULL) AS x, if(x = 0, 'fail', 'ok');
