select count(), sum(number) from file('02892.orc') where indexHint(u32 in (42, 4294966296));
