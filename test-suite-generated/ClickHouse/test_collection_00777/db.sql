drop table if exists utf8_overlap;
create table utf8_overlap (str String) engine=Memory();
insert into utf8_overlap values ('\xe2'), ('Foo⚊BarBazBam'), ('\xe2'), ('Foo⚊BarBazBam');
