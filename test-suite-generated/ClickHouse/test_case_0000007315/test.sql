SELECT toDecimal32OrDefault('Hello', 3, 123.456::Decimal32(3)) AS x, toTypeName(x);
