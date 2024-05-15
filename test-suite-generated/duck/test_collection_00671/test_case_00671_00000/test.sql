SELECT *
  FROM monthly_sales
    PIVOT(SUM(amount) FOR MONTH IN unique_months)
      AS p
  ORDER BY EMPID;
