select count(), sum(number) from file('02892.orc') where indexHint(s between '-9' and '1!!!');
