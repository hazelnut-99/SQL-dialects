select count(), sum(number) from file('02841.parquet') where indexHint(i8 between -3 and 2);
