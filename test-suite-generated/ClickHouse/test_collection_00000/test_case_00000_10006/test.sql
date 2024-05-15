SELECT * FROM (SELECT 1 :: UInt32 as key) AS t1 FULL JOIN (SELECT 1 :: Nullable(UInt32) as key) t2 USING (key) ORDER BY key;
