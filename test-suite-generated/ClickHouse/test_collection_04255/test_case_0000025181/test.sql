select count(), sum(number) from file('02841.parquet') where indexHint(u8 == 10 or 1 == 1);
