SELECT sum(isNull(t1.x)), count(t1.x) FROM nt AS t1 LEFT JOIN nt AS t2 USING(x);
