SELECT
  TeamName,
  Player,
  Score,
  NTILE(2) OVER (PARTITION BY TeamName ORDER BY Score ASC) AS NTILE
FROM ScoreBoard s
ORDER BY TeamName, Score;
