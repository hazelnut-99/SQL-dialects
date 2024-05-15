SELECT concatWithSeparator('|', materialize('a'), materialize(toFixedString('b', 1))) == 'a|b';
