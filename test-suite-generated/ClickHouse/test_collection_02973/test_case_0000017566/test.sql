select count() from (select * from test union distinct select * from test union all select * from test);
