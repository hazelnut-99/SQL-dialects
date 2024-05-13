SELECT has([(a, b), (c, d)], (a, b)) FROM (SELECT materialize(1) AS a, 2 AS b, 3 AS c, 4 AS d);
