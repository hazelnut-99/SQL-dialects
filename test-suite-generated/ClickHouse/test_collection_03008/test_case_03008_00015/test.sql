select count(1), min(i64), max(i64) from file('02892.orc') where i64 between -150 and 250;
