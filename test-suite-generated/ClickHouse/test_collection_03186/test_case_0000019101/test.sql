SELECT number, anyIf('Hello', arrayJoin([1, NULL, 0]) = 0) FROM numbers(2) GROUP BY number ORDER BY number;
