WITH map('a', 2, 'b', NULL) AS m SELECT m[materialize(toNullable('a'))], m[materialize(toNullable('b'))], m[materialize(toNullable('c'))];
