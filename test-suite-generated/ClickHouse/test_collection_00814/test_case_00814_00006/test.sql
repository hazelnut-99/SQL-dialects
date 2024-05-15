SELECT substring(CAST('foo', 'Enum8(\'foo\' = 1)'), 1, 1), substring(CAST('foo', 'Enum16(\'foo\' = 1111)'), 1, 2);
