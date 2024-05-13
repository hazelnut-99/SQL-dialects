select sumIf(number::Decimal128(3), number % 10) from numbers(1000);
