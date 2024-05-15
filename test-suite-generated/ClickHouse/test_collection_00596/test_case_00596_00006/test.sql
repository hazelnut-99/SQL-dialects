SELECT sum(isNull(t1.x)), count(t1.x) FROM nt AS t1 RIGHT JOIN nt AS t2 USING(x);
