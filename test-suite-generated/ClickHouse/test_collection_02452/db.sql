drop table if exists order;
CREATE TABLE order
(
    ID Int64,
    Type Int64,
    Num UInt64,
    t DateTime
)
ENGINE = MergeTree()
PARTITION BY toYYYYMMDD(t)
ORDER BY (ID, Type, Num);
system stop merges order;
insert into order select number%2000, 1, number, (1656700561 - intDiv(intHash32(number), 1000)) from numbers(100000);
insert into order select number%2000, 1, number, (1656700561 - intDiv(intHash32(number), 1000)) from numbers(100000);
insert into order select number%2000, 1, number, (1656700561 - intDiv(intHash32(number), 1000)) from numbers(100000);
