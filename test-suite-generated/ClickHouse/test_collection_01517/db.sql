drop table if exists table;
create table table(query String, test String, run UInt32, metrics Array(UInt32), version UInt32) engine Memory;
