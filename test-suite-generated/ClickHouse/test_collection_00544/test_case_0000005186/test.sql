select max(key) from tab_00612 left array join n as val where (key, val.x) in ((1, 1), (2, 2));
