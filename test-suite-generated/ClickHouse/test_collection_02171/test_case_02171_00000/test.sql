select * from file(concat(currentDatabase(), '/test2/data.Parquet'), 'Parquet', 'number UInt64');
