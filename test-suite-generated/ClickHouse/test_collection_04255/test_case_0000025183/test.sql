select count(), sum(number) from file('02841.parquet') where indexHint(u64 + 1000000 == 1001000);
