DROP TABLE IF EXISTS sensor_value;
CREATE TABLE sensor_value (
    received_at DateTime('Asia/Istanbul'),
    device_id UUID,
    sensor_id UUID,
    value Nullable(Decimal(18, 4)),
    low_warning Nullable(Decimal(18, 4)),
    low_critical Nullable(Decimal(18, 4)),
    high_warning Nullable(Decimal(18, 4)),
    high_critical Nullable(Decimal(18, 4))
) ENGINE = MergeTree
PARTITION BY toDate(received_at)
ORDER BY (device_id, sensor_id);
INSERT INTO sensor_value (received_at, device_id, sensor_id, value, low_warning, low_critical, high_warning, high_critical) VALUES ('2018-12-18 00:16:07', 'a4d92414-09aa-4dbd-80b2-124ddaacf333', 'ed87e57c-9331-462a-80b4-9f0c005e88c8', '0.4400', '-10000000.0000', '-10000000.0000', '10000000.0000', '10000000.0000');
