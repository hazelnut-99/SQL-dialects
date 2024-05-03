SELECT 'dt <= dt64' FROM dt64test WHERE dt_column <= materialize(toDateTime64('2020-01-13 13:37:00', 3));
