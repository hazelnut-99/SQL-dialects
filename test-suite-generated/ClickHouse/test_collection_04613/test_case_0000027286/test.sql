SELECT lhs.id, rhs.id, lhs.value, rhs.value FROM test_table_1 AS lhs FULL JOIN test_table_2 AS rhs ON lhs.id = rhs.id
WHERE lhs.id = 5 AND rhs.id = 6;
