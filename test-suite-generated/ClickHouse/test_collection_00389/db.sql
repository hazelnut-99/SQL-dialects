drop table if exists lc_00688;
drop table if exists lc_00688;
drop table if exists ary_lc_null;
CREATE TABLE ary_lc_null (i int, v Array(LowCardinality(Nullable(String)))) ENGINE = MergeTree() ORDER BY i ;
INSERT INTO ary_lc_null VALUES (1, ['1']);
