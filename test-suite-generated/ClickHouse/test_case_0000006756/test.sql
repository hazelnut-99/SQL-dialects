SELECT count(), X FROM foo_merge JOIN t2 USING Val WHERE Val = 3 AND Id = 3 GROUP BY X;
