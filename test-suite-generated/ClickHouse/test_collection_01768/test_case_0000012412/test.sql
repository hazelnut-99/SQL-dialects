select mapAdd((key, val), (key, val)) as res, toTypeName(res) from values ('key Array(Enum8(\'a\'=1, \'b\'=2)), val Array(Int16)',  (['a'], [1]), (['b'], [1]));
