select * from (select 0 as k, toDate(0) as v) t1 asof join (select 0 as k, toDate(0) as v) t2 using(k, v);
