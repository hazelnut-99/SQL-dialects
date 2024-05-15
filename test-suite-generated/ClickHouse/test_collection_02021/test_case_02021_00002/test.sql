SELECT t1.*, t1.dt, t2.*, t2.dt FROM t1 JOIN t2 ON t1.foo = t2.bar WHERE t2.dt >= '2020-02-01';
