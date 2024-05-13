SELECT *
  FROM sales
    PIVOT(
        SUM(amount)
        FOR YEAR IN (2020, 2021)
            MONTH IN ('JAN', 'FEB', 'MAR', 'APR')
    ) AS p
  ORDER BY EMPID;
