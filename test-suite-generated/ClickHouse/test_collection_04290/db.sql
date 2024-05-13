CREATE TEMPORARY TABLE table_lz4 (id UInt64, ui UInt256 CODEC(LZ4)) ENGINE = Memory;
INSERT INTO table_lz4 SELECT * FROM generateRandom() LIMIT 50;
CREATE TEMPORARY TABLE table_gcd (id UInt64, ui UInt256 CODEC(GCD, LZ4)) ENGINE = Memory;
INSERT INTO table_gcd SELECT * FROM table_lz4;
