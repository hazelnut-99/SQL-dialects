CREATE TABLE integers(i INTEGER, j INTEGER);
EXPLAIN SELECT i FROM integers LIMIT 4;
EXPLAIN SELECT i FROM integers ORDER BY i;
EXPLAIN SELECT i FROM integers ORDER BY i LIMIT 4;
EXPLAIN SELECT i FROM integers ORDER BY i LIMIT 4 OFFSET 3;
EXPLAIN SELECT i FROM integers ORDER BY i OFFSET 3;
