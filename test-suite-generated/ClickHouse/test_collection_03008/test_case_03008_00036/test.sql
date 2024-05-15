select count(1), min(d32), max(d32) from file('02892.orc') where (d32 between '-0.011'::Decimal32(3) and 0.006::Decimal32(3));
