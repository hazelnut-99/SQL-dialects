CREATE TABLE landing (n Int64) engine=MergeTree order by n;
CREATE TABLE target  (n Int64) engine=MergeTree order by n;
CREATE MATERIALIZED VIEW landing_to_target TO target AS
    SELECT n + throwIf(n == 3333)
    FROM landing;
TRUNCATE TABLE landing;
TRUNCATE TABLE target;
INSERT INTO target SELECT * FROM numbers(10000);
