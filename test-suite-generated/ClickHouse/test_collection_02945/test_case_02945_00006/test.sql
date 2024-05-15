select count(), sum(number) from file('02841.parquet') where indexHint(u64 in (42, 18446744073709550616));
