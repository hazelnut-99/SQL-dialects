SELECT sum(value) FROM (SELECT number, sum(number) AS value FROM (SELECT *, toDecimal64(number, 6) AS val FROM numbers) GROUP BY number);
