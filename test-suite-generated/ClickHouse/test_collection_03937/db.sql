CREATE TABLE test_02559__fuzz_20(`id1` Int16, `id2` Decimal(18, 14)) ENGINE = MergeTree ORDER BY id1;
INSERT INTO test_02559__fuzz_20 SELECT number, number FROM numbers(10);
