DROP TABLE IF EXISTS view_no_nulls;
DROP TABLE IF EXISTS view_nulls;
CREATE OR REPLACE VIEW view_no_nulls AS
SELECT * FROM ( SELECT number + 1 AS a, number + 11 AS b FROM numbers(2) ) AS t1
FULL JOIN ( SELECT number + 2 AS a, number + 22 AS c FROM numbers(2) ) AS t2
USING a ORDER BY a;
CREATE OR REPLACE VIEW view_nulls AS
SELECT * FROM ( SELECT number + 1 AS a, number + 11 AS b FROM numbers(2) ) AS t1
FULL JOIN ( SELECT number + 2 AS a, number + 22 AS c FROM numbers(2) ) AS t2
USING a ORDER BY a;
DETACH TABLE view_no_nulls;
DETACH TABLE view_nulls;
ATTACH TABLE view_no_nulls;
ATTACH TABLE view_nulls;
