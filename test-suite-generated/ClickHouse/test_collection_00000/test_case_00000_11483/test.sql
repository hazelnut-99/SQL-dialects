SELECT concatWithSeparator('|', materialize(toFixedString('a', 1)), 'b') == 'a|b';
