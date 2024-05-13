PREPARE v1 AS SELECT list_transform(?, x -> x + 1);
EXECUTE v1([1, 2, 3]);
PREPARE v2 AS SELECT list_transform([1, 2, 3], x -> x + ?);
EXECUTE v2(1);
PREPARE v3 AS SELECT list_transform(?, x -> x + ? + ?);
EXECUTE v3([1, 2, 3], 1, 1);
PREPARE v4 AS SELECT list_filter(?, x -> x > 1);
EXECUTE v4([1, 2, 3]);
PREPARE v5 AS SELECT list_filter([1, 2, 3], x -> x > ?);
EXECUTE v5(1);
PREPARE v6 AS SELECT list_filter(?, x -> x > ? AND ?);
EXECUTE v6([1, 2, 3], 1, True);
CREATE TABLE a (i TINYINT);
PREPARE p1 AS SELECT * FROM a;
EXECUTE p1;
EXECUTE p1;
DROP TABLE a;
DEALLOCATE p1;
CREATE TABLE accounts AS SELECT 1 id, 'Mark' AS name;
SUMMARIZE SELECT * FROM accounts WHERE id = 1;
PREPARE query AS SUMMARIZE SELECT * FROM accounts WHERE id = $1;
EXECUTE query(1);
PREPARE query AS (SUMMARIZE SELECT * FROM accounts WHERE id = $1);
EXECUTE query(1);
DESCRIBE SELECT * FROM accounts WHERE id = 1;
PREPARE query AS DESCRIBE SELECT * FROM accounts WHERE id = $1;
EXECUTE query(1);
PREPARE query AS (DESCRIBE SELECT * FROM accounts WHERE id = $1);
EXECUTE query(1);
CREATE TABLE b (i TINYINT);
INSERT INTO b VALUES (1), (2), (3), (4), (5);
PREPARE s1 AS DELETE FROM b WHERE i=$1;
EXECUTE s1(3);
DROP TABLE b CASCADE;
PREPARE q1 AS
	COPY (
		select $1 as 'col'
	) to 'duckdb_unittest_tempdir/84215/res.csv' (
		FORMAT csv
	);
CREATE TABLE b (i TINYINT);
INSERT INTO b VALUES (1), (2), (3), (4), (5);
PREPARE s1 AS DELETE FROM b WHERE i=$1;
EXECUTE s1(3);
