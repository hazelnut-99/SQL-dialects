select mapAdd((cast(['a', 'b'], 'Array(LowCardinality(String))'), [1, 1]), ([key], [1])) from values('key String', ('b'), ('c'), ('d'));
