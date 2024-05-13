insert into table function file('data.avro', 'Parquet', 'x UInt64') select * from numbers(10);
