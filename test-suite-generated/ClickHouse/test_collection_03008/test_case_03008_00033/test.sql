select count(1), min(s), max(s) from file('02892.orc') where (s between '-9' and '1!!!');
