select * from (select * from (select 43) tbl(i) ANTI JOIN (select 42) tbl2(u) on (i=u)) tbl(i) where i=42;
