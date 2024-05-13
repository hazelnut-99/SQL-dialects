SELECT *
  FROM monthly_sales
    PIVOT(SUM(amount) FOR MONTH IN ('1-JAN', '2-FEB', '3-MAR', '4-APR') GROUP BY status)
      AS p
  ORDER BY 1;
