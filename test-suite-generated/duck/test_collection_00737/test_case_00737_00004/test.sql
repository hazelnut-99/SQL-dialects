select count(*) from (select * from range(200000) tbl(i) where i % 997 != 0) tbl(i) using sample 80% (reservoir);
