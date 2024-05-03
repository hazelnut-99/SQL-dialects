select count() from (select * from test union distinct select * from test except select * from test where name = '3');
