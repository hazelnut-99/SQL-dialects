SELECT if(1 = 0, NULL, toNullable(toUInt8(0))) AS x, toTypeName(x);
