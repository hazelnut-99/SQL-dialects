select count(), sum(number) from file('02841.parquet') where indexHint(0);
