select count(), sum(number) from file('02841.parquet', Parquet, 'number UInt64, negative_or_null Int64') where indexHint(negative_or_null > -50);
