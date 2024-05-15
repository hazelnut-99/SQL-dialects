WITH
    arrayJoin([1, 2, 3, nan, 4, 5]) AS data,
    arrayJoin([nan, 1, 2, 3, 4]) AS data2,
    arrayJoin([1, 2, 3, 4, nan]) AS data3,
    arrayJoin([nan, nan, nan]) AS data4,
    arrayJoin([nan, 1, 2, 3, nan]) AS data5
SELECT
    min(data),
    min(data2),
    min(data3),
    min(data4),
    min(data5);
WITH
    arrayJoin([1, 2, 3, nan, 4, 5]) AS data,
    arrayJoin([nan, 1, 2, 3, 4]) AS data2,
    arrayJoin([1, 2, 3, 4, nan]) AS data3,
    arrayJoin([nan, nan, nan]) AS data4,
    arrayJoin([nan, 1, 2, 3, nan]) AS data5
SELECT
    max(data),
    max(data2),
    max(data3),
    max(data4),
    max(data5);
Select max(-number) from numbers(100);
Select min(-number) from numbers(100);
Select argMax((n, n), n) t, toTypeName(t) FROM (Select if(number % 3 == 0, NULL, number) as n from numbers(10));
Select argMaxIf((n, n), n, n < 5) t, toTypeName(t) FROM (Select if(number % 3 == 0, NULL, number) as n from numbers(10));
Select argMaxIf((n, n), n, n > 5) t, toTypeName(t) FROM (Select if(number % 3 == 0, NULL, number) as n from numbers(10));
Select argMin((n, n), n) t, toTypeName(t) FROM (Select if(number % 3 == 0, NULL, number) as n from numbers(10));
Select argMinIf((n, n), n, n < 5) t, toTypeName(t) FROM (Select if(number % 3 == 0, NULL, number) as n from numbers(10));
Select argMinIf((n, n), n, n > 5) t, toTypeName(t) FROM (Select if(number % 3 == 0, NULL, number) as n from numbers(10));
WITH
    arrayJoin([1, 2, 3, nan, 4, 5]) AS data,
    arrayJoin([nan, 1, 2, 3, 4]) AS data2,
    arrayJoin([1, 2, 3, 4, nan]) AS data3,
    arrayJoin([nan, nan, nan]) AS data4,
    arrayJoin([nan, 1, 2, 3, nan]) AS data5
SELECT
    min(data),
    min(data2),
    min(data3),
    min(data4),
    min(data5);
WITH
    arrayJoin([1, 2, 3, nan, 4, 5]) AS data,
    arrayJoin([nan, 1, 2, 3, 4]) AS data2,
    arrayJoin([1, 2, 3, 4, nan]) AS data3,
    arrayJoin([nan, nan, nan]) AS data4,
    arrayJoin([nan, 1, 2, 3, nan]) AS data5
SELECT
    max(data),
    max(data2),
    max(data3),
    max(data4),
    max(data5);
