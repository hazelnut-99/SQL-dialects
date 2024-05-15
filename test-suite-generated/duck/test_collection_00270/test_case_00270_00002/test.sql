SELECT * FROM integers as int LIMIT (SELECT MAX(integers.i) FROM integers) OFFSET (SELECT MIN(integers.i) FROM integers);
