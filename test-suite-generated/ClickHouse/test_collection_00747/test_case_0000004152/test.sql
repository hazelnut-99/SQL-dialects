WITH materialize(map('a', 2, 'b', NULL)) AS m SELECT m[materialize('a')], m[materialize('b')], m[materialize('c')];
