WITH materialize(map(1, 2, 3, NULL)) AS m SELECT m[1], m[2], m[3];
