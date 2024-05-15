select * from file(concat(currentDatabase(), '/test4/data.Parquet.gz'), 'Parquet', 'number UInt64');
