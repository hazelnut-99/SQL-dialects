select count(*) from range(200000) tablesample reservoir(90%);
