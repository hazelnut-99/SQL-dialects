DROP TABLE IF EXISTS t_proj_external;
CREATE TABLE t_proj_external
(
    k1 UInt32,
    k2 UInt32,
    k3 UInt32,
    value UInt32
)
ENGINE = MergeTree
ORDER BY tuple();
INSERT INTO t_proj_external SELECT 1, number%2, number%4, number FROM numbers(50000);
SYSTEM STOP MERGES t_proj_external;
ALTER TABLE t_proj_external ADD PROJECTION aaaa (
    SELECT
        k1,
        k2,
        k3,
        sum(value)
    GROUP BY k1, k2, k3
);
INSERT INTO t_proj_external SELECT 1, number%2, number%4, number FROM numbers(100000) LIMIT 50000, 100000;
SYSTEM START MERGES t_proj_external;
