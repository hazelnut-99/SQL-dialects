select count(), sum(number) from file('02892.orc') where indexHint(u8 in (10, 15, 250));
