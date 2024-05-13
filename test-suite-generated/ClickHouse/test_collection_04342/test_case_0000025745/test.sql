select count(1), min(f64), max(f64) from file('02892.orc') where (f64 between -0.11 and 0.06);
