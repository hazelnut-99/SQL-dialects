SELECT min(number) as min_number FROM numbers(10) GROUP BY number HAVING 1 ORDER BY min_number;
