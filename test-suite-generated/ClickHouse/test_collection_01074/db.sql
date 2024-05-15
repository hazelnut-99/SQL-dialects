CREATE TABLE IF NOT EXISTS local_01213 (id Int) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO local_01213 SELECT toString(number) FROM numbers(2);
INSERT INTO local_01213 SELECT toString(number) FROM numbers(2);
