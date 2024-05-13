select count(1), min(u32), max(u32) from file('02892.orc') where u32 in (42, 4294966296);
