SELECT concatWithSeparator('|', 'a', materialize('bar' :: FixedString(3))) == 'a|bar';
