SELECT CAST(([1, 2, 3], ['1', '2', 'foo']), 'Map(UInt8, String)') AS map, map[1];
