SELECT DISTINCT ON(x) x FROM (SELECT 1 as x UNION ALL BY NAME SELECT '1' as x);
