select count(1), min(u16), max(u16) from file('02892.orc') where u16 between 4000 and 61000 or u16 == 42;
