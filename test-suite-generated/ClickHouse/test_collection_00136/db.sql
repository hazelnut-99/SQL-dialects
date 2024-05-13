drop table if exists sequence_test;
create table sequence_test (time UInt32, data UInt8) engine=Memory;
insert into sequence_test values (0,0),(1,0),(2,0),(3,0),(4,1),(5,2),(6,0),(7,0),(8,0),(9,0),(10,1),(11,1);
