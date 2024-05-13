DROP TABLE IF EXISTS date_datetime_key_condition;
CREATE TABLE date_datetime_key_condition (dt DateTime) ENGINE = MergeTree() ORDER BY dt;
INSERT INTO date_datetime_key_condition VALUES ('2020-01-01 00:00:00'), ('2020-01-01 10:00:00'), ('2020-01-02 00:00:00');
