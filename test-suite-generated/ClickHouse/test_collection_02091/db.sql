CREATE TABLE IF NOT EXISTS topXtest(A Int64) ENGINE = Memory;
INSERT INTO topXtest SELECT number FROM numbers(100);
INSERT INTO topXtest SELECT number FROM numbers(30);
INSERT INTO topXtest SELECT number FROM numbers(10);
