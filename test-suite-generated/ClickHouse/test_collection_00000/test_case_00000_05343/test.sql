select * from (select 0 as k, toInt16(1) as v) t1 asof join (select 0 as k, toInt16(0) as v) t2 using(k, v);
