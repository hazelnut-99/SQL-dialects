SELECT test, toTypeName(test), IF(test = 0, 1, 0) FROM test_nullable_float_issue7347;
