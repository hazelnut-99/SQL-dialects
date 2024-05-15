drop table if exists test_entry_distance;
create table test_entry_distance (Title String) engine = Memory;
insert into test_entry_distance values ('привет как дела?... Херсон'), ('привет как дела клип - TUT.BY'), ('привет'), ('пап привет как дела - TUT.BY'), ('привет братан как дела - TUT.BY'), ('http://metric.ru/'), ('http://autometric.ru/'), ('http://top.bigmir.net/'), ('http://metris.ru/'), ('http://metrika.ru/'), ('');
