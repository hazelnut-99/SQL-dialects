select a, b, c, d, e, f  from (select 44 a, 88 b, 13 c, 14 d, 15 e, 16 f) t group by 1,2,3,-3,-2,-1 order by a;
