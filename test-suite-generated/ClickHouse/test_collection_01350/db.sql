drop table if exists h;
create table h (EventDate Date, CounterID UInt64, WatchID UInt64) engine = MergeTree order by (CounterID, EventDate);
insert into h values ('2020-06-10', 16671268, 1);
