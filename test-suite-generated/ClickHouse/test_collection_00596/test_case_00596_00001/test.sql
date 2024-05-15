SELECT sum(isNull(t1.x)), count(t1.x) FROM nt AS t1 LEFT JOIN nt AS t2 ON t1.x = t2.x;
