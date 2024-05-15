select i, struct_pack(i:=i, s:=list(string_split(s, 'b'))) from test5 group by i order by i;
