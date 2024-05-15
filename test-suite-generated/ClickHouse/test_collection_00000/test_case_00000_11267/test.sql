SELECT sumMap([number % 3, number % 4 - 1], [number :: Float64, NULL]) FROM numbers(3) GROUP BY number WITH TOTALS ORDER BY number;
