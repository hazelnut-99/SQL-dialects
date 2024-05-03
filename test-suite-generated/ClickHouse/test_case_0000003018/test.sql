SELECT `time`, groupArray((sensor_id, volume)) AS groupArr FROM (
    SELECT (intDiv(toUInt32(received_at), 900) * 900) AS `time`, sensor_id, avg(value) AS volume
    FROM sensor_value
    WHERE received_at BETWEEN '2018-12-12 00:00:00' AND '2018-12-30 00:00:00'
    GROUP BY `time`,sensor_id
    ORDER BY `time`
) GROUP BY `time` ORDER BY `time`;
