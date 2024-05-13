select count(), sum(number) from file('02892.orc') where indexHint(f64 between -0.11 and 0.06);
