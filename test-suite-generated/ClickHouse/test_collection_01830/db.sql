DROP TABLE IF EXISTS test_jit_nonnull;
CREATE TABLE test_jit_nonnull (value UInt8) ENGINE = TinyLog;
INSERT INTO test_jit_nonnull VALUES (0), (1);
DROP TABLE IF EXISTS test_jit_nullable;
CREATE TABLE test_jit_nullable (value Nullable(UInt8)) ENGINE = TinyLog;
INSERT INTO test_jit_nullable VALUES (0), (1), (NULL);
