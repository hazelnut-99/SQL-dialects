SELECT concatWithSeparator('|', 'a', materialize(45 :: Int64)) == 'a|45';
