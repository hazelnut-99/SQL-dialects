select count(*) from range(200) tablesample reservoir(10%);
