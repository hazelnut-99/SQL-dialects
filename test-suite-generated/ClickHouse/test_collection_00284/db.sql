DROP TABLE IF EXISTS numbers1;
DROP TABLE IF EXISTS numbers2;
CREATE TABLE numbers1 ENGINE = Memory AS SELECT number FROM numbers(1000);
CREATE TABLE numbers2 ENGINE = Memory AS SELECT number FROM numbers(1000);
DROP TABLE numbers1;
DROP TABLE numbers2;
CREATE TABLE numbers1 ENGINE = MergeTree ORDER BY intHash32(number) SAMPLE BY intHash32(number) AS SELECT number FROM numbers(1000);
CREATE TABLE numbers2 ENGINE = MergeTree ORDER BY intHash32(number) SAMPLE BY intHash32(number) AS SELECT number FROM numbers(1000);
