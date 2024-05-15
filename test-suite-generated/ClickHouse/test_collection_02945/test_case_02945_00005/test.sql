select count(), sum(number) from file('02841.parquet') where indexHint(i32 between -150 and 250);
