select uuid from (select * from test union distinct select * from test);
