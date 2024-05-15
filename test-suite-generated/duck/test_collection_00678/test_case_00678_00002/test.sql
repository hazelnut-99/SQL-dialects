SELECT * FROM monthly_sales
    UNPIVOT(sales FOR month IN (jan AS January, feb AS February, mar AS March, april))
    ORDER BY empid;
