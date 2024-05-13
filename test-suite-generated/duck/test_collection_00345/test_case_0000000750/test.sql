select i, list(string_split(s, 'b')) from test5 group by i order by i;
