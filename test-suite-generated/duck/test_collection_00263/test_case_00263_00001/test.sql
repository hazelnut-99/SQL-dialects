select * from (select 42) tbl(a) SEMI JOIN (select 42 where 1=0) tbl2(b) on (a=b);
