DROP TABLE IF EXISTS merge_tree;
CREATE TABLE merge_tree (d Date) ENGINE = MergeTree ORDER BY d PARTITION BY d;
INSERT INTO merge_tree VALUES ('2020-01-01'), ('2020-01-02'), ('2020-01-03'), ('2020-01-04'), ('2020-01-05'), ('2020-01-06');
ALTER TABLE merge_tree DROP PARTITION 20200103; -- unfortunately, this works, but not as user expected.
