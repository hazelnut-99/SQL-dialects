select toTypeName(arrayMap((x, y) -> x + y, [], CAST([], 'Array(Int32)')));
