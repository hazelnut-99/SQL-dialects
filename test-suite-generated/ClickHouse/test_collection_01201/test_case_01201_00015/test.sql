select mapAdd(map(cast('a', 'FixedString(1)'), 1, 'b', 1), map(key, 1)) as res, toTypeName(res) from values('key String', ('b'), ('c'), ('d'));
