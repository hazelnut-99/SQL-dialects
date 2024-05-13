SELECT *
  FROM monthly_sales
    PIVOT(COUNT(*) FOR MONTH IN ('JAN', 'FEB', 'MAR', 'DEC') GROUP BY empid)
      AS p
  ORDER BY EMPID;
