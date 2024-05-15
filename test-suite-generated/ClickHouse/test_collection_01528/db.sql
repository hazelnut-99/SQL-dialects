drop database if exists test_01600;
create database test_01600;
CREATE TABLE test_01600.base
(
`id` UInt64,
`id2` UInt64,
`d` UInt64,
`value` UInt64
)
ENGINE=MergeTree()
PARTITION BY d
ORDER BY (id,id2,d);
CREATE TABLE test_01600.derived1
(
    `id1` UInt64,
    `d1` UInt64,
    `value1` UInt64
)
ENGINE = MergeTree()
PARTITION BY d1
ORDER BY (id1, d1)
;
CREATE TABLE test_01600.derived2
(
    `id2` UInt64,
    `d2` UInt64,
    `value2` UInt64
)
ENGINE = MergeTree()
PARTITION BY d2
ORDER BY (id2, d2)
;
