SELECT empid, dept, month, sales_jan_feb, sales_mar_apr FROM monthly_sales
    UNPIVOT((sales_jan_feb, sales_mar_apr) FOR month IN ((jan, feb), (mar, april)));
