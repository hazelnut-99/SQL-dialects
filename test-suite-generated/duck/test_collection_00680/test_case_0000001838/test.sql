SELECT * FROM monthly_sales
    UNPIVOT(sales FOR month IN (jan, feb, mar, april))
    ORDER BY empid;
