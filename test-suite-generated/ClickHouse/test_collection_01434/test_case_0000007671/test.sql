WITH ['2023-04-05 00:25:23.123', '2023-04-05 00:25:24.124']::Array(DateTime64(3)) AS dt SELECT arrayMax(dt), arrayMin(dt), arrayDifference(dt);
