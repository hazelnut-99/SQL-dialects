select count(), sum(number) from file('02892.orc', ORC, 'number UInt64, positive_or_null UInt64') where indexHint(positive_or_null < 50);
