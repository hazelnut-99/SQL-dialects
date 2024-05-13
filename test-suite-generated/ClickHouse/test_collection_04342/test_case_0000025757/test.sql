select count(), sum(number) from file('02892.orc') where indexHint(s like '99%' or u64 == 2000);
