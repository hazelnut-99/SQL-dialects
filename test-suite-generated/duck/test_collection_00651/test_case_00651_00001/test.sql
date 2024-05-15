SELECT min_, "min__1", "min__2" FROM (SELECT MIN(COLUMNS('([a-z])\d+')) AS "min_\2" FROM numerics);
