select count(), sum(number) from file('02892.orc', ORC, 'number UInt64, string_or_null LowCardinality(Nullable(String))') where indexHint(string_or_null like 'I am%');
