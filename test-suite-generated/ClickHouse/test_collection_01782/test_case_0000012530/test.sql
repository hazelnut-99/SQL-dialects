SELECT if(1 = 1, NULL, toNullable(toUInt8(0))) AS x, toTypeName(x);
