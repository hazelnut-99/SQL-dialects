select count(), sum(number) from file('02892.orc') where indexHint(u8 == 10 or 1 == 1);
