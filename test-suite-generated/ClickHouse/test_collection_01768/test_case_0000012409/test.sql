select mapAdd((cast(['a', 'b'], 'Array(FixedString(1))'), [1, 1]), ([key], [1])) as res, toTypeName(res) from values('key FixedString(1)', ('b'), ('c'), ('d'));
