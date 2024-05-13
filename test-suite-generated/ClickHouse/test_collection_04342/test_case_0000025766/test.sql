select count(), min(positive_or_null), max(positive_or_null) from file('02892.orc', ORC, 'number UInt64, positive_or_null UInt64') where (positive_or_null < 50);
