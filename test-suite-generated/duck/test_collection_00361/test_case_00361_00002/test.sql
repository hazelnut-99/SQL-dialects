select i, list(string_split(s, 'b')) from test8 group by i order by i;
