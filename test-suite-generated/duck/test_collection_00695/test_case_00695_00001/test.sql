SELECT * EXCLUDE (j, k) REPLACE (i+100 AS i), * EXCLUDE (j) REPLACE (i+100 AS i), * EXCLUDE (j, k) REPLACE (i+101 AS i) FROM integers;
