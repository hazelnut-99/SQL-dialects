SELECT
  TeamName,
  Player,
  Score,
  NTILE(2) OVER (ORDER BY Score ASC) AS NTILE
FROM ScoreBoard s
ORDER BY Score;
