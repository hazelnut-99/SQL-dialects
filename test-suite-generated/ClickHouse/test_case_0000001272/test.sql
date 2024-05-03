select u, windowFunnel(86400)(dt, a is null, COALESCE(b, '') = 'b3') as s from funnel_test_non_null group by u order by u format JSONCompactEachRow;
