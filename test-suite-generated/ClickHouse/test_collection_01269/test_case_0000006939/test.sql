WITH number - 90 AS lat SELECT DISTINCT greatCircleAngle(0, 0, 0, lat) = abs(lat) FROM numbers(180);
