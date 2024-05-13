SELECT toDecimal256OrDefault(444, 3, 123.456::Decimal256(3)) AS x, toTypeName(x);
