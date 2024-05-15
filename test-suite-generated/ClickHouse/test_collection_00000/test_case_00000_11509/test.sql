SELECT concatWithSeparator('|', 'a', materialize('bar' :: Nullable(FixedString(3)))) == 'a|bar';
