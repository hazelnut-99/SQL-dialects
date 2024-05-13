select groupArray(s) from (select sum(n) s from (select toDecimal32(number, 2) as n from numbers(1000)));
