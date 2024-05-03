SELECT roundBankers(welchTTest(0.95)(left, right).3, 6) as t_stat, roundBankers(welchTTest(0.95)(left, right).4, 6) as p_value from welch_ttest;
