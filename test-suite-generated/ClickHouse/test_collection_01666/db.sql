drop table if exists tp;
create table tp (d1 Int32, d2 Int32, eventcnt Int64, projection p (select sum(eventcnt) group by d1)) engine = MergeTree order by (d1, d2);
