SELECT roundBankers(studentTTest(0.95)(left, right).3, 6) as t_stat, roundBankers(studentTTest(0.95)(left, right).4, 6) as p_value from student_ttest;
