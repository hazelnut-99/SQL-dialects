select count(), sum(number) from file('02841.parquet') where indexHint(dt64_ns between '2000-01-01' and '2005-01-01');
