select groupArray(s) from (select sum(n) s from (select toDecimal128(1, 10) as n));
