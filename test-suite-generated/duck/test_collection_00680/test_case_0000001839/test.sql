SELECT empid, dept, april, month, sales FROM monthly_sales
    UNPIVOT(sales FOR month IN (jan, feb, mar))
    ORDER BY empid;
