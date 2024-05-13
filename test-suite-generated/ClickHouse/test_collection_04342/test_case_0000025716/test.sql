select count(), sum(number) from file('02892.orc') where indexHint(i8 between -3 and 2);
