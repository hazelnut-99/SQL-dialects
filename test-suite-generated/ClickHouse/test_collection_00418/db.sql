drop table if exists prewhere_alias;
CREATE TABLE prewhere_alias (a UInt8,  b Int32,  c UInt8 ALIAS a,  d Int64 ALIAS b + 1, e Int32 alias a + b) ENGINE = MergeTree ORDER BY tuple();
insert into prewhere_alias values (1, 1);
