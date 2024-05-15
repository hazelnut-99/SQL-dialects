select * from (select 42 except select 43) tbl(i) where i=42;
