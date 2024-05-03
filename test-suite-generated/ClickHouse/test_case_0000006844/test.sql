select x from (select toDecimal64(2.3, 4) x) group by x;
