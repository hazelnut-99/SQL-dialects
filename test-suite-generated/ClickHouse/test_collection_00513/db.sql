DROP TABLE IF EXISTS numbers1;
DROP TABLE IF EXISTS numbers2;
CREATE TABLE numbers1 ENGINE = Memory AS SELECT number as _table FROM numbers(1000);
CREATE TABLE numbers2 ENGINE = Memory AS SELECT number as _table FROM numbers(1000);
