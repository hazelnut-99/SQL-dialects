select count(1), min(i8), max(i8) from file('02892.orc') where i8 between -3 and 2;
