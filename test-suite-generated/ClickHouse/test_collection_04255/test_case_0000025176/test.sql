select count(), sum(number) from file('02841.parquet') where indexHint(d128 between '-0.00000000000011'::Decimal128(20) and 0.00000000000006::Decimal128(20));
