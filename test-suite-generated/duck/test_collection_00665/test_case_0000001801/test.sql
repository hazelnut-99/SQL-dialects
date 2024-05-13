SELECT DaysToManufacture, AVG(StandardCost) AS AverageCost
FROM Product
GROUP BY DaysToManufacture;
