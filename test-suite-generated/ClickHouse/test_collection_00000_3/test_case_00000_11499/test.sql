SELECT concatWithSeparator('|', 'a', materialize(52 :: UInt128)) == 'a|52';
