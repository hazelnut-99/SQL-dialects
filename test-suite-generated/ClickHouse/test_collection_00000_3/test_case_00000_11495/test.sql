SELECT concatWithSeparator('|', 'a', materialize(48 :: UInt8)) == 'a|48';
