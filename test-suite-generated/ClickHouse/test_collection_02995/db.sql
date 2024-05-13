DROP TABLE IF EXISTS spark_bar_test;
WITH number DIV 50 AS k, toUInt32(number % 50) AS value SELECT k, sparkbar(50, 0, 99)(number, value) FROM numbers(100) GROUP BY k ORDER BY k;
