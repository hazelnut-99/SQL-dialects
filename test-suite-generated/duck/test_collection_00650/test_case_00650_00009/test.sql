SELECT min_i, min_j, max_i, max_j FROM (SELECT MIN(COLUMNS(*)) AS "min_\0", MAX(COLUMNS(*)) AS "max_\0" FROM integers);
