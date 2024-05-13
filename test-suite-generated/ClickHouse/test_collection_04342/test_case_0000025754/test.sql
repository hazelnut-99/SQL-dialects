select count(1), min(d128), max(128) from file('02892.orc') where (d128 between '-0.00000000000011'::Decimal128(20) and 0.00000000000006::Decimal128(20));
