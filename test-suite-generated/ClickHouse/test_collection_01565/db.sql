drop table if exists enum;
create table enum engine MergeTree order by enum as select cast(1, 'Enum8(\'zero\'=0, \'one\'=1)') AS enum;
