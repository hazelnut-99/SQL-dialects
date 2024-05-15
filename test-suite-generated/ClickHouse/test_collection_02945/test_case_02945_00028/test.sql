select count(), sum(number) from file('02841.parquet') where indexHint(u32 + 1000000 == 999000);
