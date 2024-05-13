select count(), sum(number) from file('02892.orc') where indexHint(fs between '-9' and '1!!!');
