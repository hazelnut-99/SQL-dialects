CREATE TABLE datetime_date_table (
    col_date Date,
    col_datetime DateTime,
    col_datetime64 DateTime64(3),
    col_date_string String,
    col_datetime_string String,
    col_datetime64_string DateTime64,
    col_date_lc LowCardinality(String),
    col_datetime_lc LowCardinality(String),
    col_datetime64_lc LowCardinality(String),
    PRIMARY KEY col_date
) ENGINE = MergeTree;
INSERT INTO datetime_date_table VALUES ('2020-03-04', '2020-03-04 10:23:45', '2020-03-04 10:23:45.123', '2020-03-04', '2020-03-04 10:23:45', '2020-03-04 10:23:45.123', '2020-03-04', '2020-03-04 10:23:45', '2020-03-04 10:23:45.123');
INSERT INTO datetime_date_table VALUES ('2020-03-05', '2020-03-05 12:23:45', '2020-03-05 12:23:45.123', '2020-03-05', '2020-03-05 12:23:45', '2020-03-05 12:23:45.123', '2020-03-05', '2020-03-05 12:23:45', '2020-03-05 12:23:45.123');
INSERT INTO datetime_date_table VALUES ('2020-04-05', '2020-04-05 00:10:45', '2020-04-05 00:10:45.123', '2020-04-05', '2020-04-05 00:10:45', '2020-04-05 00:10:45.123', '2020-04-05', '2020-04-05 00:10:45', '2020-04-05 00:10:45.123');
