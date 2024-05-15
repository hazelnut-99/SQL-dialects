SELECT * FROM tbl_mix, LATERAL (SELECT UNNEST(tbl_mix.col_a) new_a, UNNEST(tbl_mix.col_b) new_b) g
ORDER BY new_a;
