SELECT toDecimal32OrDefault(111, 3, 123.456::Decimal32(3)) AS x, toTypeName(x);
