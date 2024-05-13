select count(1), min(dt64_ms), max(dt64_ms) from file('02892.orc') where dt64_ms between '2000-01-01' and '2005-01-01';
