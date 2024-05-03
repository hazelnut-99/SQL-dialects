SELECT toNullable('2023-02-09'::Date + number * 10) AS d FROM numbers(2) ORDER BY d WITH FILL;
