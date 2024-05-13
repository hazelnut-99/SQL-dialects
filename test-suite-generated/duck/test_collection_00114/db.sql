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
CREATE MACRO IFELSE(a,b,c) AS CASE WHEN a THEN b ELSE c END;
CREATE MACRO mod_two(k) AS k%2;
CREATE MACRO add_mac(a, b) AS a + b;
CREATE MACRO double_add(a, b, c) AS add_mac(add_mac(a, b), c);
CREATE MACRO triple_add1(a, b, c, d) AS add_mac(add_mac(a, b), add_mac(c, d));
