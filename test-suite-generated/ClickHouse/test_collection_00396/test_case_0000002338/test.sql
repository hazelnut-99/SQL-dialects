SELECT cityHash64(materialize(1), 2, '') AS x1, cityHash64((materialize(1), 2), '') AS x2, cityHash64(materialize(1), (2, '')) AS x3, cityHash64((materialize(1), 2, '')) AS x4;
