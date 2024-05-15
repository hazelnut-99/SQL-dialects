SELECT concatWithSeparator('|', materialize('a'), toFixedString('b', 1)) == 'a|b';
