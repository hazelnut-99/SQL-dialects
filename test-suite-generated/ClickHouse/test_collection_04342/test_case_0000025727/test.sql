select count(1), min(u64), max(u64) from file('02892.orc') where u64 in (42, 18446744073709550616);
