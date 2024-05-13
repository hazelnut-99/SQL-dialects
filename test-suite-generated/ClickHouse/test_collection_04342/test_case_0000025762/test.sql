select count(), min(u8), max(u8) from file('02892.orc') where (u8 == 10 or 1 == 1);
