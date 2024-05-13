SELECT concatWithSeparator('|', 'a', materialize(42.42 :: Float32)) == 'a|42.42';
