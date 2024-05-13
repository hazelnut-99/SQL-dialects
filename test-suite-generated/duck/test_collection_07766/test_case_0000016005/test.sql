SELECT
  *,
  lag(Weekly_Sales, 1) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_1,
  lag(Weekly_Sales, 2) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_2,
  lag(Weekly_Sales, 3) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_3,
  lag(Weekly_Sales, 4) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_4,
  lag(Weekly_Sales, 5) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_5,
  lag(Weekly_Sales, 6) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_6,
  lag(Weekly_Sales, 7) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_7,
  lag(Weekly_Sales, 8) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_8,
  lag(Weekly_Sales, 9) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_9,
  lag(Weekly_Sales, 10) OVER(PARTITION BY "Store", "Dept" ORDER BY "Date" ASC) AS Lag_10
FROM
  data;
