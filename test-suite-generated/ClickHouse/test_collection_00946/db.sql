DROP TABLE IF EXISTS test_joinGet;
CREATE TABLE test_joinGet(user_id Nullable(Int32), name String) Engine = Join(ANY, LEFT, user_id);
INSERT INTO test_joinGet VALUES (2, 'a'), (6, 'b'), (10, 'c'), (null, 'd');
