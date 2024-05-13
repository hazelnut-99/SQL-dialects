DROP TABLE IF EXISTS issue32107;
CREATE TABLE issue32107(A Int64, s_quantiles AggregateFunction(quantilesTDigest(0.1, 0.25, 0.5, 0.75, 0.9, 0.95, 0.99), Float64)) ENGINE = AggregatingMergeTree ORDER BY A;
INSERT INTO issue32107 SELECT A, quantilesTDigestState(0.1, 0.25, 0.5, 0.75, 0.9, 0.95, 0.99)(x) FROM (SELECT 1 A, arrayJoin(cast([2.0, inf, number / 33333],'Array(Float64)')) x FROM numbers(100)) GROUP BY A;
OPTIMIZE TABLE issue32107 FINAL;
DROP TABLE IF EXISTS issue32107;
