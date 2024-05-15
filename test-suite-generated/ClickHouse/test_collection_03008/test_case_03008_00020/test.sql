select count(), sum(number) from file('02892.orc') where indexHint(dt64_us between toDateTime64(900000000, 2) and '2005-01-01');
