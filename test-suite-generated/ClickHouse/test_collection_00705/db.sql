DROP TABLE IF EXISTS part_info;
CREATE TABLE part_info (t DateTime) ENGINE = MergeTree PARTITION BY toDate(t) ORDER BY (t);
INSERT INTO part_info VALUES (toDateTime('1970-10-01 00:00:01')), (toDateTime('1970-10-02 00:00:01')), (toDateTime('1970-10-03 00:00:01'));
