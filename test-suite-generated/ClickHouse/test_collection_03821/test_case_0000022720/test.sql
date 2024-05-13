SELECT concatWithSeparator('|', 'a', materialize(46 :: Int128)) == 'a|46';
