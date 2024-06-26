WITH number - 90 AS lat SELECT DISTINCT greatCircleAngle(0, 0, 0, lat) = abs(lat) FROM numbers(180);
WITH number - 180 AS lon SELECT lon, round(greatCircleAngle(0, 0, lon, 0) - abs(lon) AS err, 2) FROM numbers(360) WHERE abs(err) > 0.01;
