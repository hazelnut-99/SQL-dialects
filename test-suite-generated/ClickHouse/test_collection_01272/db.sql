DROP TABLE IF EXISTS tableCommon;
DROP TABLE IF EXISTS tableTrees;
DROP TABLE IF EXISTS tableFlowers;
CREATE TABLE tableCommon (`key` FixedString(15), `value` Nullable(Int8)) ENGINE = Log();
CREATE TABLE tableTrees (`key` FixedString(15), `name` Nullable(Int8), `name2` Nullable(Int8)) ENGINE = Log();
CREATE TABLE tableFlowers (`key` FixedString(15), `name` Nullable(Int8)) ENGINE = Log();
