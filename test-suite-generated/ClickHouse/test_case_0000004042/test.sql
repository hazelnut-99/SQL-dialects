SELECT (c1, c2) as t FROM values((-5, 0), (nan, 0.), (0., 0.), (5., 5.)) ORDER BY t DESC LIMIT 1;
