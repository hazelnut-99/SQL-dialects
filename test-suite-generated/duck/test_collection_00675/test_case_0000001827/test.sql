SELECT * FROM Produce
PIVOT(SUM(sales) FOR quarter IN ('Q1', 'Q2', 'Q3', 'Q4'))
ORDER BY ALL;
