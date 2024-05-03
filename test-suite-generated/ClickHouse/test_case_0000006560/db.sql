drop table if exists t1;
CREATE TABLE t1 (c0 Int32) ENGINE = MergeTree() ORDER BY c0 PARTITION BY (- (c0));
insert into t1 values(1);
