SELECT
    CAST(number, 'String') AS v2,
    caseWithExpression('x', 'y', 0, cond2) AS cond1,
    toNullable('1' = v2) AS cond2
FROM numbers(2);
