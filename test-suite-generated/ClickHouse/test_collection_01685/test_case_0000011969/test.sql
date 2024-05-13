select maxMap([cast(1, 'Decimal(10, 2)')], [cast(toInt32(number) - 50, 'Decimal(10, 2)')]) from numbers(1, 100);
