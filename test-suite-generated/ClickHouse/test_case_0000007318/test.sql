SELECT toDecimal256OrDefault('Hello', 3, 123.456::Decimal256(3)) AS x, toTypeName(x);
