SELECT concatWithSeparator('|', materialize(toFixedString('a', 1)), toFixedString('b', 1)) == 'a|b';
