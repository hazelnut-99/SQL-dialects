select * from (select 42) tbl(a) SEMI JOIN (select 43) tbl2(b) on (a=b) where a = 42;
