CREATE TABLE IF NOT EXISTS functional_index_mergetree (x Float64) ENGINE = MergeTree ORDER BY round(x);
INSERT INTO functional_index_mergetree VALUES (7.42)(7.41)(7.51);
