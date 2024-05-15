select i, struct_pack(i:=i, s:=list(s)) from test5 group by i order by i;
