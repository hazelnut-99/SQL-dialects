SELECT cityHash64(1, 2, '') AS x1, cityHash64((1, 2), '') AS x2, cityHash64(1, (2, '')) AS x3, cityHash64((1, 2, '')) AS x4;
