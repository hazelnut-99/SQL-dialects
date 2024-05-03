SELECT 'dt64 > dt' FROM dt64test WHERE dt64_column > materialize(toDateTime('2020-01-13 13:37:00'));
