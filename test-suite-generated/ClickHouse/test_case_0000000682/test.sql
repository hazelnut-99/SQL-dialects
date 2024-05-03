select '17 left', * from (select 1 as x, 2 as y) t1 left join (select 1 as xx, 2 as yy from numbers(17)) t2  on x = xx or y = yy;
