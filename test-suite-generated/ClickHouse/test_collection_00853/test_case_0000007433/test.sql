SELECT * FROM t1_00826 cross join t2_00826 where t1_00826.a + 1 = t2_00826.a + t2_00826.b AND (t1_00826.a + t1_00826.b + t2_00826.a + t2_00826.b > 5);
