SELECT * FROM integers as int OFFSET (SELECT MIN(integers.i) FROM integers);
