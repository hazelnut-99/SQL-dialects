SELECT concatWithSeparator('|', 'a', materialize(44 :: Int32)) == 'a|44';
