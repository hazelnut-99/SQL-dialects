SELECT concatWithSeparator('|', 'a', materialize(43 :: Int16)) == 'a|43';
