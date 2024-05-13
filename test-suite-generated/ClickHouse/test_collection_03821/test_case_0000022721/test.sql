SELECT concatWithSeparator('|', 'a', materialize(47 :: Int256)) == 'a|47';
