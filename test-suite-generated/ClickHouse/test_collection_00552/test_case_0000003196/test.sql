WITH number % 10 = 0 AS value, number AS time SELECT exponentialMovingAverage(1)(value, time) AS exp_smooth FROM numbers_mt(10);
