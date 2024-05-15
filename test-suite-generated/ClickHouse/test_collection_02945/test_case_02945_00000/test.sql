select count(), sum(number) from file('02841.parquet') where indexHint(u8 in (10, 15, 250));
