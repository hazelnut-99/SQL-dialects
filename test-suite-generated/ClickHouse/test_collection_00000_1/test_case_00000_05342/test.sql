select * from (select 0 as k, toInt8(1) as v) t1 asof join (select 0 as k, toInt8(0) as v) t2 using(k, v);
