SELECT has([(a, b), (c, d)], (b, c)) FROM (SELECT materialize(1) AS a, 2 AS b, materialize(2) AS c, 2 AS d);
