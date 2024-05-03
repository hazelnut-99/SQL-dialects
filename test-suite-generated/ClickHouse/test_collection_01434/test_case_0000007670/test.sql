WITH ['2023-04-05 00:25:23', '2023-04-05 00:25:24']::Array(DateTime) AS dt SELECT arrayMax(dt), arrayMin(dt), arrayDifference(dt);
