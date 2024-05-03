with (select count() from (select * from test union distinct select * from test except select * from test where toUInt8(name) > 3)) as max
select count() from (select * from test union all select * from test where toUInt8(name) < max);
