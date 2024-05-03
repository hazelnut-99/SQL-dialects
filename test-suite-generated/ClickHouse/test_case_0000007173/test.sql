select uuid from test union distinct select uuid from test union all select uuid from test where name = '1';
