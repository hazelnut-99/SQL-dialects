SELECT *
    FROM sales UNPIVOT INCLUDE NULLS
    (sales FOR quarter IN (q1       AS "Jan-Mar",
                           q2       AS "Apr-Jun",
                           q3       AS "Jul-Sep",
                           q4 AS "Oct-Dec"));
