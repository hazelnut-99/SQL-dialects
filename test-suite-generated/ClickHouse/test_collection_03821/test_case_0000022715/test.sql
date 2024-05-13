SELECT concatWithSeparator('|', materialize(toFixedString('a', 1)), materialize(toFixedString('b', 1))) == 'a|b';
