SELECT number % 10 AS k, boundingRatio(1000 + number, number * 1.5 - 111) FROM numbers(100) GROUP BY k WITH TOTALS ORDER BY k;
