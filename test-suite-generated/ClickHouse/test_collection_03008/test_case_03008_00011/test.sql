select count(1), min(i32), max(i32) from file('02892.orc') where i32 between -150 and 250;
