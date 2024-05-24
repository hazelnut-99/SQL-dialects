SELECT transform(arrayJoin(['c', 'b', 'a']), ['a', 'b'], [toDateTime64('2023-01-01', 3), toDateTime64('2023-02-02', 3)], toDateTime64('2023-03-03', 3));
