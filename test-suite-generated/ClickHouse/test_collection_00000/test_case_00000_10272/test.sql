SELECT round(number % 3) AS number FROM remote('127.{1,1}', numbers(20)) GROUP BY number ORDER BY number ASC;
