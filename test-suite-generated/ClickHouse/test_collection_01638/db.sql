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
DROP TABLE database_for_range_dict.date_table;
CREATE TABLE database_for_range_dict.date_table
(
  CountryID UInt64,
  StartDate Date,
  EndDate Date,
  Tax Nullable(Float64)
)
ENGINE = MergeTree()
ORDER BY CountryID;
INSERT INTO database_for_range_dict.date_table VALUES(1, toDate('2019-05-05'), toDate('2019-05-20'), 0.33);
INSERT INTO database_for_range_dict.date_table VALUES(1, toDate('2019-05-21'), toDate('2019-05-30'), 0.42);
INSERT INTO database_for_range_dict.date_table VALUES(2, toDate('2019-05-21'), toDate('2019-05-30'), NULL);
CREATE DICTIONARY database_for_range_dict.range_dictionary_nullable
(
  CountryID UInt64,
  StartDate Date,
  EndDate Date,
  Tax Nullable(Float64) DEFAULT 0.2
)
PRIMARY KEY CountryID
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'date_table' DB 'database_for_range_dict'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(RANGE_HASHED())
RANGE(MIN StartDate MAX EndDate);
