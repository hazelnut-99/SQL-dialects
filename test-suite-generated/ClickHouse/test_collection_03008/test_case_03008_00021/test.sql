select count(1), min(dt64_us), max(dt64_us) from file('02892.orc') where (dt64_us between toDateTime64(900000000, 2) and '2005-01-01');
