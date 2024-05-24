SELECT concatWithSeparator('|', 'a', materialize(44.44 :: Decimal(2))) == 'a|44';
