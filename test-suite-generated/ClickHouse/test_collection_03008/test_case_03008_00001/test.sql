select count(1), min(u8), max(u8) from file('02892.orc') where u8 in (10, 15, 250);
