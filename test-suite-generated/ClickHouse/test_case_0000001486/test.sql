SELECT
    arraySort(groupUniqArray(val)) AS uniq,
    toTypeName(uniq),
    arraySort(groupArray(val)) AS arr,
    toTypeName(arr)
FROM
(
    SELECT CAST(number % 2, 'Enum(\'hello\' = 1, \'world\' = 0)') AS val
    FROM numbers(2)
);
