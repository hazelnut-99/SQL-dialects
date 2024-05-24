SELECT concatWithSeparator('|', 'a', materialize('hallo' :: Enum('hallo' = 1))) == 'a|hallo';
