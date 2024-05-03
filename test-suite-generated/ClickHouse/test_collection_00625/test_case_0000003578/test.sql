SELECT 1
 WHERE 0=(SELECT number FROM numbers(2) ORDER BY number LIMIT 1)
   AND 1=(SELECT number FROM numbers(2) ORDER BY number DESC LIMIT 1);
