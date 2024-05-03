SELECT minIf((c1, c2), c2 >= 0), maxIf((c1, c2), c2 >= 0) FROM values((0., 0.), (5., 5.), (NULL, 0.));
