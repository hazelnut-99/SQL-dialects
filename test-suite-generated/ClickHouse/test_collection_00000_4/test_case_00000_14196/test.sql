SELECT toDateTime64('2023-04-21 10:20:30', 0) AS dt64, toMillisecond(dt64), toMillisecond(materialize(dt64));
