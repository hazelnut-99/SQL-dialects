SELECT last_value(four) over (order by four rows between current row
        and unbounded following exclude current row), four
FROM tenk1d ORDER BY four;
