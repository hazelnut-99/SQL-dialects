select x from (select toDecimal32(1.3, 2) x) group by x;
