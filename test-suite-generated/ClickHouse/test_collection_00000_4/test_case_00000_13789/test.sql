select * from (SELECT number as a FROM numbers(10)) t1 PASTE JOIN (select number as a from numbers(10) order by a desc) t2;
