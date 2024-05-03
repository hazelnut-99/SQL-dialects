select groupArray(s) from (select sum(n) s from (select toDecimal32(1, 2) as n));
