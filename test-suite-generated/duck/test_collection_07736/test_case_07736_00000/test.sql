select min(len(w)), max(len(w))from (
    select max(s) over(partition by ms order by ds) w from strings
) q;
