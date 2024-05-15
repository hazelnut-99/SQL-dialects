SELECT min_a, min_b, min_c FROM (SELECT MIN(COLUMNS('([a-z])\d+')) AS "min_\1" FROM numerics);
