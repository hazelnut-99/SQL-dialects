select * from (select 42 intersect select 42) tbl(i) where i=42;
