SELECT foo FROM (SELECT anyLast(number) AS foo FROM numbers(1) GROUP BY number);
