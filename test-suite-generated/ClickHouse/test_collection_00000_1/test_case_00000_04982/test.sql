SELECT count(1), uniqExact(1) FROM (
SELECT k FROM (SELECT toNullable(1) as k FROM numbers(1)) nums
JOIN (SELECT toNullable(1) AS k, number n FROM numbers(100000)) j
USING k);
