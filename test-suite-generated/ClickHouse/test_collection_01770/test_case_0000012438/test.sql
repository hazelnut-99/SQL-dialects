select mapAdd(map(key, val), map(key, val)) as res, toTypeName(res) from values ('key Enum16(\'a\'=1, \'b\'=2), val Int16',  ('a', 1), ('b', 1));
