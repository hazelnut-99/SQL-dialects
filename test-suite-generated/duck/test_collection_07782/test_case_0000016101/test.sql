SELECT nth_value(four, 5) over (order by four rows between unbounded preceding
        and unbounded following exclude ties), four
FROM tenk1d ORDER BY four;
