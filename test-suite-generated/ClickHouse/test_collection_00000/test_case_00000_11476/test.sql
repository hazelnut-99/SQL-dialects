SELECT concatWithSeparator('|', materialize('a'), materialize('b')) == 'a|b';
