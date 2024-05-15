SELECT concatWithSeparator('|', 'a', materialize('foo' :: Nullable(String))) == 'a|foo';
