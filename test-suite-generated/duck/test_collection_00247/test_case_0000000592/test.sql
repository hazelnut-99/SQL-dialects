SELECT new_a, new_b
FROM tbl_ints, LATERAL (SELECT UNNEST(col_a) new_a, UNNEST(col_b) new_b) g
ORDER BY 1;
