SELECT
    str,
    replaceAll(str, 'o', '*') AS replaced
FROM replaceall
ORDER BY str ASC;
