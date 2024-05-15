select count(), min(number), max(number) from file('02892.orc') where indexHint(0);
