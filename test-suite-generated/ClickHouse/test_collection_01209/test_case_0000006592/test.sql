SELECT
    s,
    parseDateTime64BestEffortUS(s,3,'UTC') AS a
FROM
(
    SELECT arrayJoin([
'01-02-1930 12:00:00',
'12.02.1930 12:00:00',
'13/02/1930 12:00:00',
'02/25/1930 12:00:00'
]) AS s)
FORMAT PrettySpaceNoEscapes;
