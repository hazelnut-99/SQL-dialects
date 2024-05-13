SELECT concatWithSeparator('|', 'a', materialize('2023-11-14' :: Date)) == 'a|2023-11-14';
