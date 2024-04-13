CREATE TABLE tbl_structs AS SELECT
	{'a': 2.0, 'b': 'hello', 'c': [1, 2]} AS s1,
	1::BIGINT AS i,
	{'k': 1::TINYINT, 'j': 0::BOOL} AS s2;;
INSERT INTO tbl_structs VALUES (
	{'a': 1.0, 'b': 'yay', 'c': [10, 20]},
	42,
	{'k': 2, 'j': 1});;
SELECT UNNEST(s1), s1.a AS id FROM tbl_structs ORDER BY id;;
SELECT s1, s1.a FROM tbl_structs ORDER BY 1;;
SELECT UNNEST(s1), s1.a AS id FROM tbl_structs ORDER BY 1;;
SELECT UNNEST(s1), UNNEST(s2), i FROM tbl_structs ORDER BY i;;
SELECT UNNEST(s1), UNNEST(s2), i FROM tbl_structs ORDER BY 2 DESC;;
SELECT i, UNNEST(s1), UNNEST(s2) FROM tbl_structs ORDER BY 5 DESC;;
