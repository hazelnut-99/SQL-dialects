select count(1), min(i16), max(i16) from file('02892.orc') where i16 between -150 and 250;
