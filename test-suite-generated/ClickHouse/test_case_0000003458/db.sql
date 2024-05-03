DROP TABLE IF EXISTS date_table;
CREATE TABLE date_table
(
  CountryID UInt64,
  CountryKey String,
  StartDate Date,
  EndDate Date,
  Tax Float64
)
ENGINE = MergeTree()
ORDER BY CountryID;
INSERT INTO date_table VALUES(1, '1', toDate('2019-05-05'), toDate('2019-05-20'), 0.33);
INSERT INTO date_table VALUES(1, '1', toDate('2019-05-21'), toDate('2019-05-30'), 0.42);
INSERT INTO date_table VALUES(2, '2', toDate('2019-05-21'), toDate('2019-05-30'), 0.46);
DROP DICTIONARY IF EXISTS range_dictionary;
CREATE DICTIONARY range_dictionary
(
  CountryID UInt64,
  CountryKey String,
  StartDate Date,
  EndDate Date,
  Tax Float64 DEFAULT 0.2
)
PRIMARY KEY CountryID, CountryKey
SOURCE(CLICKHOUSE(TABLE 'date_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(COMPLEX_KEY_RANGE_HASHED())
RANGE(MIN StartDate MAX EndDate);
DROP TABLE date_table;
DROP DICTIONARY range_dictionary;
CREATE TABLE date_table
(
  CountryID UInt64,
  CountryKey String,
  StartDate Date,
  EndDate Date,
  Tax Nullable(Float64)
)
ENGINE = MergeTree()
ORDER BY CountryID;
INSERT INTO date_table VALUES(1, '1', toDate('2019-05-05'), toDate('2019-05-20'), 0.33);
INSERT INTO date_table VALUES(1, '1', toDate('2019-05-21'), toDate('2019-05-30'), 0.42);
INSERT INTO date_table VALUES(2, '2', toDate('2019-05-21'), toDate('2019-05-30'), NULL);
CREATE DICTIONARY range_dictionary_nullable
(
  CountryID UInt64,
  CountryKey String,
  StartDate Date,
  EndDate Date,
  Tax Nullable(Float64) DEFAULT 0.2
)
PRIMARY KEY CountryID, CountryKey
SOURCE(CLICKHOUSE(TABLE 'date_table'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(COMPLEX_KEY_RANGE_HASHED())
RANGE(MIN StartDate MAX EndDate);
