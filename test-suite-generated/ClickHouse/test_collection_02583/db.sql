DROP TABLE IF EXISTS row_level_policy_prewhere;
DROP ROW POLICY IF EXISTS row_level_policy_prewhere_policy0 ON row_level_policy_prewhere;
CREATE TABLE row_level_policy_prewhere (x Int16, y String) ENGINE = MergeTree ORDER BY x;
INSERT INTO row_level_policy_prewhere(y, x) VALUES ('A',1), ('B',2), ('C',3);
