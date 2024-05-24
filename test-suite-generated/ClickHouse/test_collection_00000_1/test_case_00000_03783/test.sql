SELECT concat('', toString(toDateTime('1981-09-29 00:00:00', 'Europe/Moscow') + INTERVAL number * 300 SECOND)) AS k FROM numbers(10000) GROUP BY k HAVING count() > 1 ORDER BY k;
