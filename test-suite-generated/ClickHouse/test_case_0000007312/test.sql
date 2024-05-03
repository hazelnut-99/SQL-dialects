SELECT toDecimal64OrDefault(222, 3, 123.456::Decimal64(3)) AS x, toTypeName(x);
