WITH materialize(map('a', 2, 'b', NULL)) AS m SELECT m['a'], m['b'], m['c'];
