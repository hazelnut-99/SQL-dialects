select count(), sum(number) from file('02841.parquet') where indexHint(u32 in (42, 4294966296));
