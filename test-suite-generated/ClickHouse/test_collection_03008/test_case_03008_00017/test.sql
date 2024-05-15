select count(1), min(date32), max(date32) from file('02892.orc') where date32 between '1992-01-01' and '2023-08-02';
