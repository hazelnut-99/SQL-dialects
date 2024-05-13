SELECT concatWithSeparator('|', 'a', materialize(false :: Bool)) == 'a|false';
