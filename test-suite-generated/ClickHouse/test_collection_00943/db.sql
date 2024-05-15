DROP TABLE IF EXISTS bloom_filter_not_has;
CREATE TABLE bloom_filter_not_has (ary Array(LowCardinality(Nullable(String))), d Date, INDEX idx_ary ary TYPE bloom_filter(0.01) GRANULARITY 1024) ENGINE = MergeTree() PARTITION BY d ORDER BY d;
INSERT INTO bloom_filter_not_has VALUES ([], '2020-02-27') (['o','a'], '2020-02-27') (['e','a','b'], '2020-02-27');
INSERT INTO bloom_filter_not_has VALUES (['o','a','b','c'], '2020-02-27') (['e','a','b','c','d'], '2020-02-27');
