select x, y from (select [0, 1, 2] as y, 1 as a, 2 as b) array join y as x where a = 1 and b = 2 and (x = 1 or x != 1) and x = 1;
