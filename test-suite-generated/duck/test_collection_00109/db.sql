CREATE TABLE integers (a INT);
INSERT INTO integers VALUES (1);
CREATE MACRO cte_sq(a,b) AS (WITH cte AS (SELECT a * 2 AS c) SELECT cte.c + sq.d FROM cte, (SELECT b * 3 AS d) AS sq);
CREATE MACRO nested_cte(needle, haystack) AS needle IN (
    SELECT i FROM (
        WITH ints AS (
            SELECT CAST(UNNEST(string_split(haystack,',')) AS INT) AS i
        )
        SELECT i FROM ints
    ) AS sq
);
