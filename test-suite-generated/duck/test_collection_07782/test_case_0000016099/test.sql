SELECT first_value(four) over (order by four rows between unbounded preceding
        and current row exclude group), four
FROM tenk1d ORDER BY four;
