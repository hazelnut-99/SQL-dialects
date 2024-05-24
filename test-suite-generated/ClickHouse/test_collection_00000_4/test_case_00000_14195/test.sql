SELECT toDateTime('2023-04-21 10:20:30') AS dt, toMillisecond(dt), toMillisecond(materialize(dt));
