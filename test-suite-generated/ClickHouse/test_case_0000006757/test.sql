SELECT count(), X FROM (SELECT * FROM foo_merge) f JOIN t2 USING Val WHERE Val = 3 AND Id = 3 GROUP BY X;
