select * from (select * from (select 42) tbl(i) ANTI JOIN (select 43) tbl2(u) on (i=u)) tbl(i) where i=42;
