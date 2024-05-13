SELECT (SELECT number FROM numbers(100) ORDER BY number LIMIT 1),
       (SELECT number FROM numbers(100) ORDER BY number DESC LIMIT 1);
