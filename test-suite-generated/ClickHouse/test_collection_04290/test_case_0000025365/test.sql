SELECT COUNT(*)
FROM (
    SELECT table_lz4.id, table_lz4.ui AS ui1, table_gcd.id, table_gcd.ui AS ui2
    FROM table_lz4 JOIN table_gcd
        ON table_lz4.id = table_gcd.id
)
WHERE ui1 != ui2;
