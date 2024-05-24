SELECT concatWithSeparator('|', 'a', materialize(51 :: UInt64)) == 'a|51';
