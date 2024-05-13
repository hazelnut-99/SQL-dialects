select * from (select * from (select 42) tbl(i) SEMI JOIN (select 42) tbl2(u) on (i=u)) tbl(i) where i=42;
