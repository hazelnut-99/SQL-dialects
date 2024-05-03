select groupArray(s) from (select sum(n) s from (select toDecimal64(number, 5) as n from numbers(1000)));
