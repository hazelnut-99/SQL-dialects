drop table if exists test_rewrite_uniq_to_count;
CREATE TABLE test_rewrite_uniq_to_count
(
    `a` UInt8,
    `b` UInt8,
    `c` UInt8
) ENGINE = MergeTree ORDER BY `a`;
INSERT INTO test_rewrite_uniq_to_count values ('1', '1', '1'), ('1', '1', '1');
INSERT INTO test_rewrite_uniq_to_count values ('2', '2', '2'), ('2', '2', '2');
INSERT INTO test_rewrite_uniq_to_count values ('3', '3', '3'), ('3', '3', '3');
