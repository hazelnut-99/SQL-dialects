select groupArray(s) from (select sum(n) s from (select toDecimal128(number, 10) as n from numbers(1000)));
