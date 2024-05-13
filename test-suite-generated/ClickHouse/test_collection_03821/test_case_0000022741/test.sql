SELECT concatWithSeparator('|', 'a', materialize('2123-11-14' :: Date32)) == 'a|2123-11-14';
