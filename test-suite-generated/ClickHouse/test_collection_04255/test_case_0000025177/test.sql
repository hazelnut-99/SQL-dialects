select count(), sum(number) from file('02841.parquet') where indexHint(d256 between '-0.00000000000000000000000000011'::Decimal256(40) and 0.00000000000000000000000000006::Decimal256(35));
