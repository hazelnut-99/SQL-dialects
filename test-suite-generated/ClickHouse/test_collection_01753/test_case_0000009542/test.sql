SELECT groupArray(number) FROM numbers(10) WHERE number = -1 GROUP BY number WITH TOTALS FORMAT Vertical;
