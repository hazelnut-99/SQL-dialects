select count(), sum(number) from file('02841.parquet') where indexHint(s between '-9' and '1!!!');
