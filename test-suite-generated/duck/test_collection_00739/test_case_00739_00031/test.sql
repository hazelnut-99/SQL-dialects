select * from range(100) tablesample reservoir(10 rows) repeatable(250);
