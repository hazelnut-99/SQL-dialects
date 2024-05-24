SELECT concatWithSeparator('|', 'a', materialize('foo' :: String)) == 'a|foo';
