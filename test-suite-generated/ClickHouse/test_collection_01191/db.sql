drop table if exists data;
CREATE TABLE data (ts DateTime, field String, num_field Nullable(Float64)) ENGINE = MergeTree() PARTITION BY ts ORDER BY ts;
insert into data values(toDateTime('2020-05-14 02:08:00'),'some_field_value',7.);
