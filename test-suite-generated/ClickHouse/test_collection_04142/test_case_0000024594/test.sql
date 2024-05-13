select t1.id, t2.id FROM test_table_1 AS t1 RIGHT JOIN test_table_2 AS t2 ON (t1.id = t2.id)
WHERE (acos(t2.id) <> atan(t1.id)) and (not (acos(t2.id) <> atan(t1.id)));
