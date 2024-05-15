SELECT concatWithSeparator('|', 'a', materialize('foo' :: LowCardinality(Nullable(String)))) == 'a|foo';
