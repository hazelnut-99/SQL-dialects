select * from (select 42 intersect select 43) tbl(i) where i=42;
