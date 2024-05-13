select count(), sum(number) from file('02892.orc', ORC, 'number UInt64, negative_or_null Int64') where indexHint(negative_or_null > -50);
