DROP TABLE IF EXISTS t_nullable_keys_1;
CREATE TABLE t_nullable_keys_1 (x Nullable(Int64)) ENGINE = Memory;
INSERT INTO t_nullable_keys_1 VALUES (1), (1), (NULL);
