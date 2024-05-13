select count(*) from (select * from range(200)) tbl(i) tablesample reservoir(10%);
