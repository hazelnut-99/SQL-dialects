select i, struct_pack(i:=i, s:=UNNEST(string_split(s, 'b'))) from test5 order by i;
