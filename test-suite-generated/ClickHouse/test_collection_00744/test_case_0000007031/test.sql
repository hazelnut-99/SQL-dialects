select x from (select toDecimal128(3.3, 12) x) group by x;
