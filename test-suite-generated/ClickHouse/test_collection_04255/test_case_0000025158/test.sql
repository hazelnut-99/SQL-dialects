select count(), sum(number) from file('02841.parquet') where indexHint(u16 between 4000 and 61000 or u16 == 42);
