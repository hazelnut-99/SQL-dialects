SELECT number % 2 ? NULL : toNullable('2023-02-09'::Date + number) AS d FROM numbers(5) ORDER BY d ASC NULLS LAST WITH FILL;
