select count(), sum(number) from file('02892.orc') where indexHint(i64 between -150 and 250);
