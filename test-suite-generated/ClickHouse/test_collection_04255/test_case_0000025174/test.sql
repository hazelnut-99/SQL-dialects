select count(), sum(number) from file('02841.parquet') where indexHint(d32 between '-0.011'::Decimal32(3) and 0.006::Decimal32(3));
