SELECT toDecimal128OrDefault('Hello', 3, 123.456::Decimal128(3)) AS x, toTypeName(x);
