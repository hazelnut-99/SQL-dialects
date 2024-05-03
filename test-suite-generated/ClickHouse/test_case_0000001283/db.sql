DROP TABLE IF EXISTS requests;
CREATE TABLE requests (
    event_time DateTime,
    event_date Date MATERIALIZED toDate(event_time),
    event_tm DateTime ALIAS event_time
) ENGINE = MergeTree ORDER BY (event_time);
INSERT INTO requests (event_time) VALUES ('2010-01-01 00:00:00');
