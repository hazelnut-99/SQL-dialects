CREATE TABLE a AS SELECT i, i+1 AS j, i+2 AS k, i+3 AS l FROM range(42,43) t(i);
CREATE TABLE b AS SELECT i, i+1 AS j, i+2 AS k, i+3 AS l FROM range(40,41) t(i);
