select count(), sum(number) from file('02841.parquet', Parquet, 'number UInt64, string_or_null String') where indexHint(string_or_null == '');
