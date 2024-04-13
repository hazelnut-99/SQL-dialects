CREATE VIEW list_int AS
SELECT case when i%2 <> 0 then [1] else NULL end FROM range(10000) tbl(i);;
select count(*) from list_int where l is distinct from NULL;;
