drop table if exists t;
create table t
(
    s Array(Int),
    l Int8,
    r Int8
) engine = Memory;
insert into t values ([1, 2, 3, 4, 5, 6, 7, 8], -2, -2), ([1, 2, 3, 4, 5, 6, 7, 8], -3, -3);
