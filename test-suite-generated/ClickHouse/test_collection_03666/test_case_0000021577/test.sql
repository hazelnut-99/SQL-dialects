SELECT count() == 0 FROM (SELECT '33.3' :: Decimal(9, 1) AS a WHERE a IN ('33.33' :: Decimal(9, 2)));
