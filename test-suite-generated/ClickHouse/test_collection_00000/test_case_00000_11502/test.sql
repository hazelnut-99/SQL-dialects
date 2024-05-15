SELECT concatWithSeparator('|', 'a', materialize(43.43 :: Float64)) == 'a|43.43';
