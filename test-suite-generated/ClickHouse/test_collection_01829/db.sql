DROP TABLE IF EXISTS test_jit_nonnull;
CREATE TABLE test_jit_nonnull (value UInt8) ENGINE = TinyLog;
INSERT INTO test_jit_nonnull VALUES (0), (1);
