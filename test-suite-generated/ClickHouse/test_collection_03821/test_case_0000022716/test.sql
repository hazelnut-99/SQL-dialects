SELECT concatWithSeparator('|', 'a', materialize(42 :: Int8)) == 'a|42';
