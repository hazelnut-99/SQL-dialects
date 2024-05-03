SELECT roundBankers(welchTTest(left, right).1, 6) as t_stat, roundBankers(welchTTest(left, right).2, 6) as p_value from welch_ttest;
