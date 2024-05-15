DROP TABLE IF EXISTS tab;
CREATE TABLE tab
(
    d        Date,
    dt       DateTime('UTC'),
    dt64     DateTime64(6, 'UTC'),
    str_d    String,
    str_dt   String,
    str_dt64 String,
    invalid  String
) ENGINE MergeTree ORDER BY dt;
INSERT INTO `tab` VALUES (toDate('2017-09-13'), toDateTime('2017-09-13 19:10:22', 'UTC'), toDateTime64('2017-09-13 19:10:22.123456', 6, 'UTC'), '2017-09-13', '2017-09-13 19:10:22', '2017-09-13 19:10:22.123456', 'foo');
INSERT INTO `tab` VALUES (toDate('2017-09-24'), toDateTime('2017-09-24 12:05:34', 'UTC'), toDateTime64('2017-09-24 12:05:34.123456', 6, 'UTC'), '2017-09-24', '2017-09-24 12:05:34', '2017-09-24 12:05:34.123456', 'bar');
INSERT INTO `tab` VALUES (toDate('2018-01-29'), toDateTime('2018-01-29 02:09:48', 'UTC'), toDateTime64('2018-01-29 02:09:48.123456', 6, 'UTC'), '2018-01-29', '2018-01-29 02:09:48', '2018-01-29 02:09:48.123456', 'qaz');
INSERT INTO `tab` VALUES (toDate('2019-02-21'), toDateTime('2019-02-21 15:07:43', 'UTC'), toDateTime64('2019-02-21 15:07:43.123456', 6, 'UTC'), '2019-02-21', '2019-02-21 15:07:43', '2019-02-21 15:07:43.123456', 'qux');
