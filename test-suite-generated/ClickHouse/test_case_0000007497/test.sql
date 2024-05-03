SELECT sumMap([number % 3, number % 4 - 1], [number :: UInt256, NULL]) FROM numbers(3) GROUP BY number WITH TOTALS ORDER BY number;
