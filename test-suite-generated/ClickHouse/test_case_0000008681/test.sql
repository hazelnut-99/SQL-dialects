SELECT roundBankers(studentTTest(left, right).1, 6) as t_stat, roundBankers(studentTTest(left, right).2, 6) as p_value from student_ttest;
