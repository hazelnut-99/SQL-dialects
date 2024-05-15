SELECT min((c1, c2)), max((c1, c2)) FROM values((-5, 0), (nan, 0.), (0., 0.), (5., 5.));
