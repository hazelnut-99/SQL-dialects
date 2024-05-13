SELECT sum(isNull(t1.x)), count(t1.x) FROM nt AS t1 INNER JOIN nt AS t2 USING(x);
