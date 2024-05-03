select u, windowFunnel(86400)(dt, a is null and b is null) as s from funnel_test_non_null group by u order by u format JSONCompactEachRow;
