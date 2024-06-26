drop table if exists nested_smt;
create table nested_smt (
     date date,
     val UInt64,
     counters_Map Nested (
         id UInt8,
         count Int32
     )
)
ENGINE = SummingMergeTree()
ORDER BY (date);
system stop merges nested_smt;
insert into nested_smt values ('2023-10-05', 1, [1,2,3], [10,20,30]);
insert into nested_smt values ('2023-10-05', 2, [1,2,3], [1,1,1]);
