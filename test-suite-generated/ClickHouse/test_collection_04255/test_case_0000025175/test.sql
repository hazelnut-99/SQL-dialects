select count(), sum(number) from file('02841.parquet') where indexHint(d64 between '-0.0000011'::Decimal64(7) and 0.0000006::Decimal64(9));
