create table tba (event_id Int64, event_dt Int64) Engine =MergeTree order by event_id ;
insert into tba select number%500, 20220822 from numbers(1e6);
