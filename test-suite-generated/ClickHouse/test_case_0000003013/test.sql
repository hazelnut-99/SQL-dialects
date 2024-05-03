select groupArray(s) from (select sum(n) s from (select toDecimal64(1, 5) as n));
