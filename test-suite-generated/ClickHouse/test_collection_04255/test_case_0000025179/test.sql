select count(), sum(number) from file('02841.parquet') where indexHint(s like '99%' or u64 == 2000);
