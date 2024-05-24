SELECT concatWithSeparator('|', materialize(toFixedString('a', 1)), materialize('b')) == 'a|b';
