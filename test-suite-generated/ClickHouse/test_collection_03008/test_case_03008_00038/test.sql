select count(1), min(d64), max(d64) from file('02892.orc') where (d64 between '-0.0000011'::Decimal64(7) and 0.0000006::Decimal64(9));
