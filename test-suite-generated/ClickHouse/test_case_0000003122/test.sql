SELECT
    arrayJoin([1, 60, 60*60, 60*60*24, 60*60*24*30, 60*60*24*365]) AS elapsed,
    formatReadableTimeDelta(elapsed*5.5) AS time_delta;
