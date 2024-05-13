DROP DATABASE IF EXISTS database_for_range_dict;
CREATE DATABASE database_for_range_dict;
CREATE TABLE database_for_range_dict.date_table
(
  CountryID UInt64,
  StartDate Date,
  EndDate Date,
  Tax Float64
)
ENGINE = MergeTree()
ORDER BY CountryID;
INSERT INTO database_for_range_dict.date_table VALUES(1, toDate('2019-05-05'), toDate('2019-05-20'), 0.33);
INSERT INTO database_for_range_dict.date_table VALUES(1, toDate('2019-05-21'), toDate('2019-05-30'), 0.42);
INSERT INTO database_for_range_dict.date_table VALUES(2, toDate('2019-05-21'), toDate('2019-05-30'), 0.46);
