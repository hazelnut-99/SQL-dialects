SELECT concatWithSeparator('|', toFixedString('a', 1), materialize('b')) == 'a|b';
