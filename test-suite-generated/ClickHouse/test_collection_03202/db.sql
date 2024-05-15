drop table if exists fill_ex;
create table fill_ex (
  eventDate Date ,
  storeId String
)
engine = ReplacingMergeTree()
partition by toYYYYMM(eventDate)
order by (storeId,eventDate);
insert into fill_ex (eventDate,storeId) values ('2021-07-16','s') ('2021-07-17','ee');
