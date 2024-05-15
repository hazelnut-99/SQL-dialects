select count(), sum(number) from file('02892.orc') where indexHint(date32 between '1992-01-01' and '2023-08-02');
