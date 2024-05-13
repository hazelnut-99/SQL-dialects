select * from (select 0 as k, toDecimal128(1, 0) as v) t1 asof join (select 0 as k, toDecimal128(0, 0) as v) t2 using(k, v);
