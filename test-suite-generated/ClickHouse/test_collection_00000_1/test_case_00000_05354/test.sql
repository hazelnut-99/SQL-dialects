select * from (select 0 as k, toDateTime(0, 'UTC') as v) t1 asof join (select 0 as k, toDateTime(0, 'UTC') as v) t2 using(k, v);
