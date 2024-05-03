WITH map('a', 2, 'b', NULL) AS m SELECT m[toNullable('a')], m[toNullable('b')], m[toNullable('c')];
