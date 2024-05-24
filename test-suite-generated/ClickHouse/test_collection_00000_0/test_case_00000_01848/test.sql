SELECT has([(a, b), (c, d)], (c, d)) FROM (SELECT materialize(1) AS a, 2 AS b, materialize(3) AS c, 4 AS d);
