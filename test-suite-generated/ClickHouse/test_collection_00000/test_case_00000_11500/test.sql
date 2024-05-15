SELECT concatWithSeparator('|', 'a', materialize(53 :: UInt256)) == 'a|53';
