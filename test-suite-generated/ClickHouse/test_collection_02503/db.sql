drop database if exists db_01721;
drop table if exists db_01721.table_decimal_dict;
drop dictionary if exists db_01721.decimal_dict;
create database db_01721;
CREATE TABLE db_01721.table_decimal_dict(
KeyField UInt64,
Decimal32_ Decimal(5,4),
Decimal64_ Decimal(18,8),
Decimal128_ Decimal(25,8),
Decimal256_ Decimal(76,37)
)
ENGINE = Memory;
insert into db_01721.table_decimal_dict
select number,
       number / 3,
       number / 3,
       number / 3,
       number / 3
from numbers(5000);
CREATE DICTIONARY IF NOT EXISTS db_01721.decimal_dict (
	KeyField UInt64 DEFAULT 9999999,
	Decimal32_ Decimal(5,4) DEFAULT 0.11,
	Decimal64_ Decimal(18,8) DEFAULT 0.11,
	Decimal128_ Decimal(25,8) DEFAULT 0.11
)
PRIMARY KEY KeyField
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'table_decimal_dict' DB 'db_01721'))
LIFETIME(0) LAYOUT(SPARSE_HASHED);
