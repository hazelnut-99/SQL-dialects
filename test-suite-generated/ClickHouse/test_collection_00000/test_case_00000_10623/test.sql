SELECT toDecimal128OrDefault(333, 3, 123.456::Decimal128(3)) AS x, toTypeName(x);
