select count(), min(string_or_null), max(string_or_null) from file('02892.orc', ORC, 'number UInt64, string_or_null LowCardinality(String)') where (string_or_null like 'I am%');
