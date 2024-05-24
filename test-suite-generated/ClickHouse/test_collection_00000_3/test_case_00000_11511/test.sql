SELECT concatWithSeparator('|', 'a', materialize('bar' :: LowCardinality(Nullable(FixedString(3))))) == 'a|bar';
