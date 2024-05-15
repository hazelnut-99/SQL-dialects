select count(), min(negative_or_null), max(negative_or_null) from file('02892.orc', ORC, 'number UInt64, negative_or_null Int64') where (negative_or_null is null);
