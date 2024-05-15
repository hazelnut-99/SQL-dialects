select count(), sum(number) from file('02841.parquet') where indexHint(fs between '-9' and '1!!!');
