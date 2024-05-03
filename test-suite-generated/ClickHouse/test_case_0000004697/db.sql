drop table if exists tsv_raw;
create table tsv_raw (strval String, intval Int64, b1 String, b2 String, b3 String, b4 String) engine = Memory;
insert into tsv_raw format TSVRaw "a 	1	\	\\	"\""	"\\"";
