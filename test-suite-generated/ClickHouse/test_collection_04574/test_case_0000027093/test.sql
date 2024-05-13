SELECT count() > 0 AND count() < 100000, _part FROM test WHERE rand(1)%2=1 GROUP BY _part ORDER BY _part;
