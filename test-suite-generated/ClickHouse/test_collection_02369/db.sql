drop table if exists test_02312;
create table test_02312 (x Tuple(a UInt32, b UInt32)) engine=File(Parquet);
insert into test_02312 values ((1,2)), ((2,3)), ((3,4));
