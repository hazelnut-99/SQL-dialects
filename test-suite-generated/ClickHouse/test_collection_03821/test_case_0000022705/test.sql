SELECT concatWithSeparator('|', 'a', materialize(toFixedString('b', 1))) == 'a|b';
