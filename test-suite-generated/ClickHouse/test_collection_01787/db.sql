DROP TABLE IF EXISTS test_wide_nested;
kill mutation where table = 'test_wide_nested' and database = currentDatabase() format Null;
kill mutation where table = 'test_wide_nested' and database = currentDatabase() format Null;
