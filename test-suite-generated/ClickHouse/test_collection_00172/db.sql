DROP TABLE IF EXISTS mean_ztest;
CREATE TABLE mean_ztest (v int, s UInt8) ENGINE = Memory;
INSERT INTO mean_ztest SELECT number, 0 FROM numbers(100) WHERE number % 2 = 0;
INSERT INTO mean_ztest SELECT number, 1 FROM numbers(100) WHERE number % 2 = 1;
