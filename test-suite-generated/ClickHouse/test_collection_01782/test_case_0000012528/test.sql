SELECT if(1 = 0, toNullable(toUInt8(0)), NULL) AS x, toTypeName(x);
