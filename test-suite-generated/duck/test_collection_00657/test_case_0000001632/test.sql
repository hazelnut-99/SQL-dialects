select sin(columns(df1.* exclude (key))) from df1 join df2 using(key);
