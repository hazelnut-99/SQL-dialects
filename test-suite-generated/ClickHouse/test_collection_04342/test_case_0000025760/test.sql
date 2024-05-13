select count(), min(s), max(s) from file('02892.orc') where (s like 'z%');
