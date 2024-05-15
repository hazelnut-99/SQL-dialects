select count(1), min(dt64_ns), max(dt64_ns) from file('02892.orc') where (dt64_ns between '2000-01-01' and '2005-01-01');
