select u, windowFunnel(86400)(dt, COALESCE(a, '') = 'a1', COALESCE(b, '') = 'b2') as s from funnel_test_non_null group by u order by u format JSONCompactEachRow;
