drop table if exists merge;
drop table if exists merge1;
drop table if exists merge2;
create table merge ( CounterID UInt32,  StartDate Date,  Sign Int8,  VisitID UInt64,  UserID UInt64,  StartTime DateTime,   ClickLogID UInt64) ENGINE = Merge(currentDatabase(), 'merge\[0-9\]');
alter table merge add column dummy String after CounterID;
show create table merge;
alter table merge drop column dummy;
show create table merge;
alter table merge add column dummy1 String after CounterID;
