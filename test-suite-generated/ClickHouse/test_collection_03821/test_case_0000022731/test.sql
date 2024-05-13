SELECT concatWithSeparator('|', 'a', materialize(true :: Bool)) == 'a|true';
