select count(), sum(number) from file('02841.parquet', Parquet, 'number UInt64, positive_or_null UInt64') where indexHint(positive_or_null < 50);
