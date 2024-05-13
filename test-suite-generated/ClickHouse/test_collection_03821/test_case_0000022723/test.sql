SELECT concatWithSeparator('|', 'a', materialize(49 :: UInt16)) == 'a|49';
