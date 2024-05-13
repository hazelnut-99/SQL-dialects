SELECT number, anyIf(toNullable('Hello'), arrayJoin([1, 1]) = 0) FROM numbers(2) GROUP BY number ORDER BY number;
