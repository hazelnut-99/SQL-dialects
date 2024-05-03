WITH materialize(map(1, 2, 3, NULL)) AS m SELECT m[materialize(1)], m[materialize(2)], m[materialize(3)];
