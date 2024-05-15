DROP TABLE IF EXISTS crash_02919;
CREATE TABLE crash_02919 (
    b Int64,
    c Nullable(Int64) MATERIALIZED b,
    d Nullable(Bool) MATERIALIZED b
)
ENGINE = MergeTree
ORDER BY tuple();
INSERT INTO crash_02919 VALUES (0);
