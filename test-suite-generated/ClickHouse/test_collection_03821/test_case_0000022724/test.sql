SELECT concatWithSeparator('|', 'a', materialize(50 :: UInt32)) == 'a|50';
