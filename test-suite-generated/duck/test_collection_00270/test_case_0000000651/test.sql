SELECT * FROM integers as int LIMIT (SELECT MIN(integers.i) FROM integers);
