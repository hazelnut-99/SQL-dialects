SELECT * FROM test_tbl where id>=(SELECT max(id) FROM xt(id,30));
