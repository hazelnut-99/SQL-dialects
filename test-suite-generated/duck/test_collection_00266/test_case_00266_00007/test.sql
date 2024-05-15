select * from (select 43 intersect select 42) tbl(i) where i=42;
