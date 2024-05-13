select count(), sum(number) from file('02892.orc') where indexHint(s like 'z%');
