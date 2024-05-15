select mapAdd(map(key, val), map(key, val)) as res, toTypeName(res) from values ('key UUID, val Int32', ('00000000-89ab-cdef-0123-456789abcdef', 1), ('11111111-89ab-cdef-0123-456789abcdef', 2));
