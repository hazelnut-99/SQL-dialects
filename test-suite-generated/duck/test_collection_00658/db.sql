CREATE TABLE tbl(col1 INTEGER, col2 INTEGER, col3 INTEGER);
INSERT INTO tbl VALUES (1, 200, 10), (2, 100, 20), (3, 200, 0);
VALUES (42,);
VALUES (42,),;
CREATE TABLE integers(i INTEGER, j INTEGER,);
INSERT INTO integers VALUES (42, 84,),;
UPDATE integers SET i=100,;
CREATE TABLE numerics AS SELECT 42 a42, 84 b84, 126 c126, 1000 d;
create table a as select 42 as i, 80 as j;
create table b as select 43 as i, 84 as k;
create table c as select 44 as i, 84 as l;
prepare v1 as select $1[1];
execute v1([42]);
FROM integers;
FROM integers SELECT i + 1;
FROM integers LIMIT 2;
FROM integers WHERE i IS NOT NULL;
FROM integers ORDER BY i DESC NULLS FIRST;
FROM integers SELECT DISTINCT i%2 WHERE i>0 ORDER BY ALL;
FROM integers SELECT i%2 AS g, SUM(i) sum GROUP BY g HAVING sum IS NOT NULL ORDER BY ALL;
FROM integers JOIN integers i2 USING (i);
FROM integers i1, integers i2 SELECT COUNT(*);
INSERT INTO tbl VALUES (1, 200, 10), (2, 100, 20), (3, 200, 0);
FROM tbl UNION FROM tbl ORDER BY COLUMNS('col2|col3') DESC;
CREATE TABLE df1 AS
  SELECT
    UNNEST(['K0', 'K1', 'K2', 'K3', 'K4', 'K5']) AS key,
    UNNEST([11, 12, 13, 14, 15, 16]) AS A,
    UNNEST([21, 22, 23, 24, 25, 26]) AS B;
CREATE TABLE df2 AS
  SELECT
    UNNEST(['K0', 'K2', 'K5']) AS key,
    UNNEST([2, 3, 5]) AS C;
CREATE TABLE grouped_table AS SELECT  1 id, 42 index1, 84 index2 UNION ALL SELECT 2, 13, 14;
