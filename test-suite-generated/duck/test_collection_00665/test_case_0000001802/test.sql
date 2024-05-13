SELECT 'AverageCost' AS Cost_Sorted_By_Production_Days,
  "0", "1", "2", "3", "4"
FROM
(
  SELECT DaysToManufacture, StandardCost
  FROM Product
) AS SourceTable
PIVOT
(
  AVG(StandardCost)
  FOR DaysToManufacture IN (0, 1, 2, 3, 4)
) AS PivotTable;
