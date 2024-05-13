select key from tab_00612 left array join arr as val where (key, val) in ((1, 1), (2, 2)) order by key;
